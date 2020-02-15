`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:56:10 10/28/2019
// Design Name:   SHIFT
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/SHIFT_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHIFT_TB;

	// Inputs
	reg [31:0] operand1;
	reg [31:0] operand2;
	reg dir;
	reg arith;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	SHIFT uut (
		.operand1(operand1), 
		.operand2(operand2), 
		.dir(dir), 
		.arith(arith), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 31;
		dir = 0;
		arith = 0;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 31;
		dir = 1;
		arith = 0;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 31;
		dir = 0;
		arith = 1;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 31;
		dir = 1;
		arith = 1;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 32;
		dir = 0;
		arith = 0;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 32;
		dir = 1;
		arith = 0;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 32;
		dir = 0;
		arith = 1;
		#10;
		operand1 = 32'b10000000000000000000000000000001;
		operand2 = 32;
		dir = 1;
		arith = 1;
		#10;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

