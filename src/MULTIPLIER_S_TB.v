`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:44:57 10/30/2019
// Design Name:   MULTIPLIER_S
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/MULTIPLIER_S_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MULTIPLIER_S
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MULTIPLIER_S_TB;

	// Inputs
	reg [31:0] M;
	reg [31:0] Q0;

	// Outputs
	wire [31:0] LOW;
	wire [31:0] HIGH;

	// Instantiate the Unit Under Test (UUT)
	MULTIPLIER_S uut (
		.M(M), 
		.Q0(Q0), 
		.LOW(LOW), 
		.HIGH(HIGH)
	);

	initial begin
		// Initialize Inputs
		M = 0;
		Q0 = 0;
		// Wait 100 ns for global reset to finish
		#10;
		M = 32'b00000000000000000000000000000010;
		Q0 = 32'b11111111111111111111111111111111;
		#10;
		M = 32'b00000000000000000000000000000010;
		Q0 = 32'b00000000000000000000000000000010;
		#10;
		M = 32'b00000000000000000000000000000010;
		Q0 = 32'b00000000000000000000000000000110;
      #10;
		M = 32'b11111111111111111111111111111001;
		Q0 = 32'b11111111111111111111111111110011;  
		// Add stimulus here

	end
      
endmodule

