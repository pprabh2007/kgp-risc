`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:36:15 10/30/2019
// Design Name:   MULTIPLIER
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/MULTIPLIER_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTIPLIER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MULTIPLIER_TB;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] LOW;
	wire [31:0] HIGH;

	// Instantiate the Unit Under Test (UUT)
	MULTIPLIER uut (
		.A(A), 
		.B(B), 
		.LOW(LOW), 
		.HIGH(HIGH)
	);

	initial begin
		// Initialize Inputs
		#10;
		A = 32'b00000000000000000000000000000010;
		B = 32'b11111111111111111111111111111110;
		#10;
		A = 32'b00000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		A = 32'b00000000000000000000000000000101;
		B = 32'b00000000000000000000000000000110;
		#10;
		A = 32'b11111111111111111111111111111011;
		B = 32'b00000000000000000000000000000110;
		#10;
		A = 32'b11111111111111111111111111111011;
		B = 32'b11111111111111111111111111111010;


        
		// Add stimulus here

	end
      
endmodule

