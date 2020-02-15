`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:57:33 10/30/2019
// Design Name:   SHIFT_MULTIPLY
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/SHIFT_MULTIPLY_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFT_MULTIPLY
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SHIFT_MULTIPLY_TB;

	// Inputs
	reg [31:0] high_i;
	reg [31:0] low_i;

	// Outputs
	wire [31:0] high_o;
	wire [31:0] low_o;

	// Instantiate the Unit Under Test (UUT)
	SHIFT_MULTIPLY uut (
		.high_i(high_i), 
		.low_i(low_i), 
		.high_o(high_o), 
		.low_o(low_o)
	);

	initial begin
		// Initialize Inputs
		high_i = 0;
		low_i = 0;
		#10;
		high_i = 32'b00000000000000000000000000000010;
		low_i = 32'b11111111111111111111111111111110;
        
		// Add stimulus here

	end
      
endmodule

