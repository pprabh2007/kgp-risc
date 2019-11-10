`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:22 10/29/2019 
// Design Name: 
// Module Name:    ADDER 
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
module ADDER(
	input[31:0] A,
	input[31:0] B,
	output[31:0] S,
	output C
    );

wire[6:0] carries;
CLA_UNIT cla_unit1(A[3:0], B[3:0], 1'b0, S[3:0], carries[0]);
CLA_UNIT cla_unit2(A[7:4], B[7:4], carries[0], S[7:4], carries[1]);
CLA_UNIT cla_unit3(A[11:8], B[11:8], carries[1], S[11:8], carries[2]);
CLA_UNIT cla_unit4(A[15:12], B[15:12], carries[2], S[15:12], carries[3]);
CLA_UNIT cla_unit5(A[19:16], B[19:16], carries[3], S[19:16], carries[4]);
CLA_UNIT cla_unit6(A[23:20], B[23:20], carries[4], S[23:20], carries[5]);
CLA_UNIT cla_unit7(A[27:24], B[27:24], carries[5], S[27:24], carries[6]);
CLA_UNIT cla_unit8(A[31:28], B[31:28], carries[6], S[31:28], C);

endmodule

