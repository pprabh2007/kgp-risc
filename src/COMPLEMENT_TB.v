`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:03:46 10/30/2019
// Design Name:   COMP
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/COMPLEMENT_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: COMP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module COMPLEMENT_TB;

	// Inputs
	reg [31:0] A;

	// Outputs
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	COMP uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A =32'b00000000000000000000000000000010;
		#10;
		A =32'b00000000000000000000000000000011;
		#10;
		A =32'b10000000000000000000000000011110;
		#10;		
		// Add stimulus here

	end
      
endmodule

