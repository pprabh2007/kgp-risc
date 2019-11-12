`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:09 10/29/2019 
// Design Name: 
// Module Name:    CLA 
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

module CLA_UNIT(
	input[3:0] A, input[3:0] B, input C_in, output[3:0]S, output C
    );
	
	wire[3:0] G;
	wire[3:0] P;
	assign G[0] = A[0] & B[0];
	assign G[1] = A[1] & B[1];	
	assign G[2] = A[2] & B[2];
	assign G[3] = A[3] & B[3];
	
	assign P[0] = A[0] ^ B[0];
	assign P[1] = A[1] ^ B[1];
	assign P[2] = A[2] ^ B[2];
	assign P[3] = A[3] ^ B[3];
	
	wire C1, C2, C3;
	assign C1 = G[0] | (P[0] & C_in);
	assign C2 = G[1] |(P[1] & G[0]) | (P[1] & P[0] & C_in);
	assign C3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C_in);
	
	assign C = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C_in);
		
	assign S[0] = P[0] ^ C_in;
	assign S[1] = P[1] ^ C1;
	assign S[2] = P[2] ^ C2;
	assign S[3] = P[3] ^ C3;

endmodule
