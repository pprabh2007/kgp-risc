`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:34:45 10/29/2019
// Design Name:   CLA_UNIT
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/CLA_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_UNIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_TB;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C_in;

	// Outputs
	wire [3:0] S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	CLA_UNIT uut (
		.A(A), 
		.B(B), 
		.C_in(C_in), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0000;
		C_in = 1'b0;
		#10;
		A = 4'b1001;
		B = 4'b0000;
		C_in = 1'b0;
		#10;
		A = 4'b0011;
		B = 4'b0011;
		C_in = 1'b0;
		#10;
		
        
		// Add stimulus here

	end
      
endmodule

