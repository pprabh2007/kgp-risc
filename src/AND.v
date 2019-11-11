`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:32 10/28/2019 
// Design Name: 
// Module Name:    AND 
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
module AND(
	input[31:0] A, input[31:0]B, output[31:0] C
    );

assign C[0] = A[0] & B[0];
assign C[1] = A[1] & B[1];
assign C[2] = A[2] & B[2];
assign C[3] = A[3] & B[3];
assign C[4] = A[4] & B[4];
assign C[5] = A[5] & B[5];
assign C[6] = A[6] & B[6];
assign C[7] = A[7] & B[7];
assign C[8] = A[8] & B[8];
assign C[9] = A[9] & B[9];
assign C[10] = A[10] & B[10];
assign C[11] = A[11] & B[11];
assign C[12] = A[12] & B[12];
assign C[13] = A[13] & B[13];
assign C[14] = A[14] & B[14];
assign C[15] = A[15] & B[15];
assign C[16] = A[16] & B[16];
assign C[17] = A[17] & B[17];
assign C[18] = A[18] & B[18];
assign C[19] = A[19] & B[19];
assign C[20] = A[20] & B[20];
assign C[21] = A[21] & B[21];
assign C[22] = A[22] & B[22];
assign C[23] = A[23] & B[23];
assign C[24] = A[24] & B[24];
assign C[25] = A[25] & B[25];
assign C[26] = A[26] & B[26];
assign C[27] = A[27] & B[27];
assign C[28] = A[28] & B[28];
assign C[29] = A[29] & B[29];
assign C[30] = A[30] & B[30];
assign C[31] = A[31] & B[31];


endmodule
