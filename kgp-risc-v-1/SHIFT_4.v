`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:36 10/28/2019 
// Design Name: 
// Module Name:    shift4 
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
module SHIFT_4(input[31:0] A, input bit_set, input dir, input arith, output[31:0] B);
	
	wire[31:0] left;
	wire[31:0] right;
	wire[31:0] right_arith;
	wire[31:0] result;
	
	assign left[3:0] = 4'b0000;
	assign left[31:4] = A[27:0];
	
	assign right[31:28] = 4'b0000;
	assign right[27:0] = A[31:4];

	assign right_arith[31:28] = (A[31] == 0) ? 4'b0000 : 4'b1111;
	assign right_arith[27:0] = A[31:4];
	
	assign result = (dir == 1) ? (arith==1 ? right_arith : right) : left;
	
	assign B = (bit_set == 1) ? result : A;
	
endmodule
