`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:20 10/28/2019 
// Design Name: 
// Module Name:    shift8 
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
module SHIFT_16(input[31:0] A, input bit_set, input dir, input arith, output[31:0] B);
	
	wire[31:0] left;
	wire[31:0] right;
	wire[31:0] right_arith;
	wire[31:0] result;
	
	assign left[15:0] = 16'b0000000000000000;
	assign left[31:16] = A[15:0];
	
	assign right[31:16] = 16'b0000000000000000;
	assign right[15:0] = A[31:16];

	assign right_arith[31:16] = (A[31] == 0) ? 16'b0000000000000000 : 16'b1111111111111111;
	assign right_arith[15:0] = A[31:16];
	
	assign result = (dir == 1) ? (arith==1 ? right_arith : right) : left;
	assign B = (bit_set == 1) ? result : A;
	
endmodule
