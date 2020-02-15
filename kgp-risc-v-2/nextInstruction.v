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

/*
module nextInstruction(input clk, output[31:0] t0, output[31:0] t1, output[31:0] t2, output[31:0] t3, output[31:0] t4, output[31:0] t5, output[31:0] t6, output[31:0] s0, 

	output[31:0] s1, output[31:0] s2, output[31:0] instruc,

	output[1:0] op_output, output[3:0] fn_output, output[4:0] rs_output, output[4:0] rt_output, output[4:0] imm_output, output[7:0] addr_output, output[7:0] mem_loc_output,
	
	output[31:0] A_o, output[31:0] B_o, output[31:0] C_o, output[31:0] inputB_o, output mem_data_output, output[31:0] low_output
);
	
	assign low_output = low;
	assign t6 = register_bank[13];
	assign t5 = register_bank[12];
	assign t0 = register_bank[7];
	assign t1 = register_bank[8];
	assign t2 = register_bank[9];
	assign t3 = register_bank[10];
	assign t4 = register_bank[11];
	assign s0 = register_bank[21];
	assign s1 = register_bank[22];
	assign s2 = register_bank[23];
	assign instruc = instruction;
	assign op_output = op;
	assign fn_output = fn;
	assign rs_output = rs;
	assign rt_output = rt;
	assign imm_output = imm;
	assign addr_output = addr;
	assign mem_loc_output = mem_loc;
	assign A_o = A;
	assign B_o = B;
	assign C_o = C;
	assign inputB_o = inputB;
	assign mem_data_output = mem_data;*/

	module nextInstruction(input clk, output[7:0] line_no, output[6:0] value);

	assign line_no = addr;
	assign value = register_bank[1][6:0];

	
	reg[31:0] register_bank[31:0];
	reg zflag;
	reg signflag;
	reg carryflag;
	reg overflowflag;
	
	wire[31:0] dout;
	reg[31:0] instruction;
	
	wire[31:0] mem_data;
	
	reg[7:0]addr;
	reg we;

	reg[1:0] op;
	reg[3:0] fn;
	reg[4:0] rs;
	reg[4:0] rt;
	reg[25:0] imm;
	
	wire[1:0] op_wire;
	wire[3:0] fn_wire;
	wire[4:0] rs_wire;
	wire[4:0] rt_wire;
	wire[25:0] imm_wire;
	
	
	reg[31:0] A;
	reg[31:0] B;
	reg[31:0] C;
	reg[7:0] mem_loc;
	
	wire[31:0] high;
	wire[31:0] low;
	
	reg[2:0] counter;

	wire[31:0] inputB;
	bram32x256 instruction_mem(.clka(clk), .addra(addr), .douta(dout));
	memory32x256 memory(.clka(clk), .addra(mem_loc), .douta(mem_data), .wea(we), .dina(B));
	ALU alu(op, fn, A, inputB, low, high);
	DECODER decoder(instruction, rs_wire, rt_wire, imm_wire, fn_wire, op_wire);

	assign inputB = (op==2'b00) ? C : B; 
	
	initial begin
		register_bank[0] = 0;
		register_bank[1] = 0;
		register_bank[2] = 0;
		register_bank[3] = 0;
		register_bank[4] = 0;
		register_bank[5] = 0;
		register_bank[6] = 0;
		register_bank[7] = 0;
		register_bank[8] = 0;
		register_bank[9] = 0;
		register_bank[10] = 0;
		register_bank[11] = 0;
		register_bank[12] = 0;
		register_bank[13] = 0;
		register_bank[14] = 0;
		register_bank[15] = 0;
		register_bank[16] = 0;
		register_bank[17] = 0;
		register_bank[18] = 0;
		register_bank[19] = 0;
		register_bank[20] = 0;
		register_bank[21] = 0;
		register_bank[22] = 0;
		register_bank[23] = 0;
		register_bank[24] = 0;
		register_bank[25] = 0;
		register_bank[26] = 0;
		register_bank[27] = 0;
		register_bank[28] = 0;
		register_bank[29] = 0;
		register_bank[30] = 0;
		register_bank[31] = 0;
	
		zflag <=0 ;
		signflag <= 0 ;
		carryflag <= 0 ;
		overflowflag <=0 ;
		
		counter <= 0 ;
		
		A <= 0;
		B <= 0;
		C <= 0;
		mem_loc <= 0;
		
		op <= 0;
		fn <= 0;
		imm <= 0;
		rs <= 0;
		rt <= 0;
		
		we <= 0;
		addr = 0;
		
		instruction <= 0;

	end

	always @(posedge clk) begin
		if(counter == 3'b000)
		begin
			we <= 0;
			counter <= 3'b001;
		end
		else if(counter == 3'b001)
		begin
			counter <= 3'b010;
			instruction <= dout;
		end
		else if(counter == 3'b010)
		begin
			counter <= 3'b011;
		   
			rs <= rs_wire;
			rt <= rt_wire;
			fn <= fn_wire;
			op <= op_wire;
			imm <= imm_wire;
			
			A <= register_bank[rs_wire];
			B <= register_bank[rt_wire];
			C[25:0] <= imm_wire;
			C[31:26] <= (imm_wire[25]==1)?6'b111111:6'b000000;
			mem_loc <= register_bank[rs_wire][7:0] + imm_wire[7:0];
		
		end
		else if(counter == 3'b011)
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
							register_bank[18] = (addr+1);
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
				
							register_bank[rs] = low;
							signflag <= low[31];
							addr = addr + 1;
							
						end
						else if(fn==4'b0101)
						begin
							addr = register_bank[18];
						end
						else if(fn==4'b0110)
						begin
							addr = register_bank[rs];
						end
				end
				else if(op==2'b01)
				begin
						if(fn==4'b1001)
						begin
						
							addr = addr + 1;

						end
						else if(fn==4'b1010)
						begin
							we <= 1;
							addr = addr + 1;
						end
						else if(fn==4'b0001 || fn==4'b0010)
						begin
							register_bank[20] = low;
							register_bank[19] = high;
							addr = addr + 1;
							signflag <= high[31];
			
						end
						else
						begin
					
							register_bank[rs] = low;
							signflag <= low[31];
			
							addr = addr + 1;
							
							
						end
				end
				counter <= 3'b100;
		end
		else if(counter == 3'b100)
		begin
			if(op==2'b01 && fn==4'b1001)
			begin
				register_bank[rt] = mem_data;
			end
			//allow it to store result in memeory
			counter <= 3'b000;
		end
		
	end


endmodule





















