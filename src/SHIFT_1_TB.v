`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:59:30 10/28/2019
// Design Name:   SHIFT_1
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/Shift_1_TB/Shift_1_tb.v
// Project Name:  Shift_1_TB
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFT_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shift_1_tb;

	// Inputs
	reg [31:0] A;
	reg bit_set;
	reg dir;
	reg arith;

	// Outputs
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	SHIFT_1 uut (
		.A(A), 
		.B(B), 
		.bit_set(bit_set), 
		.dir(dir), 
		.arith(arith)
	);

	initial begin
		// Initialize Inputs
		A = 32'b10000000000000000000000000000001;
		bit_set = 1;
		dir = 1;
		arith = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

