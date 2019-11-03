`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:42 10/31/2019 
// Design Name: 
// Module Name:    nextInstruction 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module nextInstruction(
	input orig_clk, output [31:0] instruction, output reg[7:0] addr, output xD, 
	output[31:0] t0, output[31:0] t1, output[31:0] t2, output[31:0] t3, output[31:0] t4, output[31:0] t5,
	output[31:0] t6, output[31:0] s0, output[31:0] s1, output[31:0] s2,
	output [25:0] immtest, output [4:0] rstest,
	output [4:0] rttest, output [31:0] a_test, output [31:0] b_test, output xD_mid,
	output reg we, output[7:0] mem_addr, output[31:0] data_in_mem_addr, output reg[31:0] to_store, output sign_last_op
    );
	 
/*TESTING*/
assign t0 = register_bank[7];
assign t1 = register_bank[8];
assign t2 = register_bank[9];
assign t3 = register_bank[10];
assign t4 = register_bank[11];
assign t5 = register_bank[12];
assign t6 = register_bank[13];
assign s0 = register_bank[21];
assign s1 = register_bank[22];
assign s2 = register_bank[23];
assign immtest=imm;
assign rstest=rs;
assign rttest=rt;
assign a_test=input_data_a;
assign b_test=input_data_b;
/**********/

/*Clocks*/
wire clk;
wire clk_mid;

/*FLAGS*/
reg zflag;
reg carryflag;
reg signflag;
reg overflowflag;
assign sign_last_op  = signflag;
/*Register Banks*/
reg[31:0] register_bank[31:0];

/*Instruction Sections*/
wire[4:0] rs;
wire[4:0] rt;
wire[3:0] fn;
wire[1:0] op;
wire[25:0] imm;

/* ALU Input-Output */
wire[31:0] output_high;
wire[31:0] output_low;
reg[31:0] input_data_a;
reg[31:0] input_data_b;

/*new*/
//reg we;


initial begin
	/*testing*/
	register_bank[0] = 0;
	register_bank[7] = 0;
	register_bank[8] = 0;
	register_bank[9] = 0;
	register_bank[10] = 0;
	register_bank[11] = 0;
	register_bank[12] = 0;
	register_bank[13] = 0;
	register_bank[14] = 0;
	/********/
	zflag = 1'b0;
	carryflag = 1'b0;
	signflag = 1'b0;
	overflowflag = 1'b0;
	addr = 0;
	we = 0;
	to_store = 0;
end

DELAYED_CLOCK_OFFSET delayed_clock_offset(orig_clk, clk_mid);
DELAYED_CLOCK delayed_clock(orig_clk, clk);
bram32x256 instruction_mem(.clka(!clk), .addra(addr), .douta(instruction));
memory32x256 memory(.clka(clk_mid), .addra(mem_addr), .douta(data_in_mem_addr), .dina(to_store), .wea(we));
DECODER decoder(instruction, rs, rt, imm, fn, op);
ALU alu(op, fn, input_data_a, input_data_b, output_low, output_high);

assign xD = clk;
assign xD_mid = clk_mid;

wire[31:0] temp;
wire[31:0] temp2;
assign temp[31:26] = 6'b000000;
assign temp[25:0] = imm;
assign temp2 = temp + register_bank[rs];
assign mem_addr = temp2[7:0];

always @(clk) begin
	
	if(clk==0)
	begin
		we = 0;
	end
	else
	begin
		if(op==2'b11)
		begin
			if(fn==4'b0000)
			begin
				addr = addr + 1;
			end
			else
			begin
				
			end
		end
		else if(op==2'b10)
		begin
			if(fn == 4'b0000 && zflag == 1'b1)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0001 && zflag == 1'b0)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0010 && carryflag == 1'b1)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0011 && carryflag == 1'b0)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0100 && signflag == 1'b1)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0101 && signflag == 1'b0)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0110 && overflowflag == 1'b1)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b0111 && overflowflag == 1'b0)
			begin
				addr = imm[7:0];
			end
			else if(fn == 4'b1001)
			begin
				addr = imm[7:0];
			end
			else if (fn == 4'b1000)
			begin
				//store addr + 1$ra register
				register_bank[18] = (addr+1);
				#1;
				addr = imm[7:0];
			end
			else
			begin
				addr = addr + 1;
			end	
		end
		else if(op==2'b00)
		begin
			if(fn==4'b0000 || fn==4'b0001 || fn==4'b0010 || fn==4'b0011 || fn==4'b0100)
			begin
				input_data_a = register_bank[rs];
				input_data_b[25:0] = imm;
				input_data_b[31:26] = (imm[25]==0) ? 6'b000000 : 6'b111111;
				#1;
				register_bank[rs] = output_low;
				signflag = output_low[31];
				addr = addr + 1;
				#1;
			end
			else if(fn==4'b0101)
			begin
				addr = register_bank[18];
				#1;
			end
			else if(fn==4'b0110)
			begin
				addr = register_bank[rs];
				#1;
			end
		end
		else if(op==2'b01)
		begin
			if(fn==4'b1001)
			begin
				register_bank[rt] = data_in_mem_addr;
				addr = addr + 1;
				#1;
			end
			else if(fn==4'b1010)
			begin
				we = 1;
				to_store = register_bank[rt];
				addr = addr + 1;
				#1;
			end
			else if(fn==4'b0001 || fn==4'b0010)
			begin
				input_data_a = register_bank[rs];
				input_data_b = register_bank[rt];
				#1;
				register_bank[20] = output_low;
				register_bank[19] = output_high;
				addr = addr + 1;
				signflag = output_high[31];
				#1;
			end
			else
			begin
				input_data_a = register_bank[rs];
				input_data_b = register_bank[rt];
				#1;
				register_bank[rs] = output_low;
				addr = addr + 1;
				signflag = output_low[31];
				#1;
				
			end
		end
	end
end


endmodule
