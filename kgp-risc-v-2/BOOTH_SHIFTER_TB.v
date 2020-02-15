`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:00 10/30/2019
// Design Name:   BOOTH_SHIFTER
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/BOOTH_SHIFTER_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BOOTH_SHIFTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BOOTH_SHIFTER_TB;

	// Inputs
	reg [31:0] high_i;
	reg [31:0] low_i;

	// Outputs
	wire [31:0] high_o;
	wire [31:0] low_o;
	wire minus_o;

	// Instantiate the Unit Under Test (UUT)
	BOOTH_SHIFTER uut (
		.high_i(high_i), 
		.low_i(low_i), 
		.high_o(high_o), 
		.low_o(low_o), 
		.minus_o(minus_o)
	);

	initial begin
		// Initialize Inputs
		high_i = 32'b00000000000000000000000000000010;
		low_i = 32'b11111111111111111111111111111110;
		#10;
        
		// Add stimulus here

	end
      
endmodule

