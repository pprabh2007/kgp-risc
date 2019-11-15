`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:32 10/28/2019
// Design Name:   NOT
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/NOT_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NOT_TB;

	// Inputs
	reg [31:0] A;

	// Outputs
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	NOT uut (
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		#10 ;
		A = 10;
		#10 ;
		A = 32;
		#10;
		A = 33;
        
		// Add stimulus here

	end
      
endmodule

