`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:43:08 11/06/2019
// Design Name:   nextInstruction
// Module Name:   C:/Users/Sodhi/TESTING/nextInstructionTB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nextInstruction
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
/*
module nextInstructionTB;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] t0;
	wire [31:0] t1;
	wire [31:0] t2;
	wire [31:0] t3;
	wire [31:0] t4;
	wire [31:0] t5;
	wire [31:0] t6;
	wire [31:0] s0;
	wire [31:0] s1;
	wire [31:0] s2;
	wire [31:0] instruc;
	wire [1:0] op_output;
	wire [3:0] fn_output;
	wire [4:0] rs_output;
	wire [4:0] rt_output;
	wire [4:0] imm_output;
	wire [7:0] addr_output;
	wire [7:0] mem_loc_output;
	wire [31:0] A_o;
	wire [31:0] B_o;
	wire [31:0] C_o;
	wire [31:0]inputB_o;
	wire [31:0] low_output;
	wire mem_data_output;
	

	// Instantiate the Unit Under Test (UUT)
	nextInstruction uut (
		.low_output(low_output),
		.clk(clk), 
		.t0(t0), 
		.t1(t1), 
		.t2(t2), 
		.t3(t3), 
		.t4(t4), 
		.t5(t5), 
		.t6(t6), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.instruc(instruc), 
		.op_output(op_output), 
		.fn_output(fn_output), 
		.rs_output(rs_output), 
		.rt_output(rt_output), 
		.imm_output(imm_output), 
		.addr_output(addr_output), 
		.mem_loc_output(mem_loc_output), 
		.A_o(A_o), 
		.B_o(B_o), 
		.C_o(C_o), 
		.inputB_o(inputB_o), 
		.mem_data_output(mem_data_output)
	);*/


module nextInstructionTB;

	reg clk;
	wire[6:0] value;
	wire[7:0] line_no;

nextInstruction uut (
		.line_no(line_no),
		.clk(clk), 
		.value(value)
		);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always begin

		clk = !clk;
		#1;
	end
		
endmodule

