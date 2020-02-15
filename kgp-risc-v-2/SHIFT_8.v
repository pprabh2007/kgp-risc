`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:09 10/28/2019 
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
module SHIFT_8(input[31:0] A, input bit_set, input dir, input arith, output[31:0] B);
	
	wire[31:0] left;
	wire[31:0] right;
	wire[31:0] right_arith;
	wire[31:0] result;
	
	assign left[7:0] = 8'b00000000;
	assign left[31:8] = A[23:0];
	
	assign right[31:24] = 8'b00000000;
	assign right[23:0] = A[31:8];

	assign right_arith[31:24] = (A[31] == 0) ? 8'b00000000 : 8'b11111111;
	assign right_arith[23:0] = A[31:8];
	
	assign result = (dir == 1) ? (arith==1 ? right_arith : right) : left;
	assign B = (bit_set == 1) ? result : A;
	
endmodule
