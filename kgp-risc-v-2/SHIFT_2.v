`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:38 10/28/2019 
// Design Name: 
// Module Name:    shift2 
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
module SHIFT_2(input[31:0] A, input bit_set, input dir, input arith, output[31:0] B);
	
	wire[31:0] left;
	wire[31:0] right;
	wire[31:0] right_arith;
	wire[31:0] result;
	
	assign left[0] = 1'b0;
	assign left[1] = 1'b0;
	assign left[31:2] = A[29:0];
	
	assign right[31] = 1'b0;
	assign right[30] = 1'b0;
	assign right[29:0] = A[31:2];

	assign right_arith[31] = (A[31] == 0) ? 1'b0 : 1'b1;
	assign right_arith[30] = (A[31] == 0) ? 1'b0 : 1'b1;
	assign right_arith[29:0] = A[31:2];
	
	assign result = (dir == 1) ? (arith==1 ? right_arith : right) : left;
	
	assign B = (bit_set == 1) ? result : A;
	
endmodule