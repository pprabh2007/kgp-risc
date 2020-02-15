`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:03:26 10/30/2019 
// Design Name: 
// Module Name:    COMPLEMENT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module COMP(input[31:0] A, output[31:0] B);
	
	wire[31:0] temp;
	wire red;
	NOT negate(A, temp);
	ADDER add(temp, 1, B, red);
	
endmodule
