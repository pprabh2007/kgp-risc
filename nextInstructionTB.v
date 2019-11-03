`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:24 11/02/2019
// Design Name:   nextInstruction
// Module Name:   C:/Users/Sodhi/ALU/nextInstructionTB.v
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

module nextInstructionTB;

	// Inputs
	reg orig_clk;

	// Outputs
	wire [31:0] instruction;
	wire [7:0] addr;
	wire xD;
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
	wire [25:0] immtest;
	wire [4:0] rstest;
	wire [4:0] rttest;
	wire [31:0] a_test;
	wire [31:0] b_test;
	wire xD_mid;
	wire we;
	wire [7:0] mem_addr;
	wire [31:0] data_in_mem_addr;
	wire [31:0] to_store;
	wire sign_last_op;

	// Instantiate the Unit Under Test (UUT)
	nextInstruction uut (
		.orig_clk(orig_clk), 
		.instruction(instruction), 
		.addr(addr), 
		.xD(xD), 
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
		.immtest(immtest), 
		.rstest(rstest), 
		.rttest(rttest), 
		.a_test(a_test), 
		.b_test(b_test), 
		.xD_mid(xD_mid), 
		.we(we), 
		.mem_addr(mem_addr), 
		.data_in_mem_addr(data_in_mem_addr), 
		.to_store(to_store), 
		.sign_last_op(sign_last_op)
	);

	initial begin
		// Initialize Inputs
		orig_clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#1;
		orig_clk = !orig_clk;
	end
      
      
endmodule

