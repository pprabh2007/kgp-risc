`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:54 10/29/2019
// Design Name:   ADDER
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/ADDER_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADDER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADDER_TB;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	ADDER uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#10;
		A = 32'b00000000000000000000000000000010;
		B = 32'b11111111111111111111111111111110;
		#10;
		A = 56;
		B = 44;
		#10;
		A = 99;
		B = 4;
		#10;
        
		// Add stimulus here

	end
      
endmodule

