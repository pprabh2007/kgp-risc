`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:04 10/28/2019 
// Design Name: 
// Module Name:    SHIFT 
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
module SHIFT(
		input[31:0] operand1, input[31:0] operand2, input dir, input arith, output[31:0] result
    );

wire[31:0] s1;
wire[31:0] s2;
wire[31:0] s3;
wire[31:0] s4;
wire[31:0] s5;

SHIFT_1 shift_1 (operand1, operand2[0], dir, arith, s1);
SHIFT_2 shift_2 (s1, operand2[1], dir, arith, s2);
SHIFT_4 shift_4 (s2, operand2[2], dir, arith, s3);
SHIFT_8 shift_8 (s3, operand2[3], dir, arith, s4);
SHIFT_16 shift_16 (s4, operand2[4], dir, arith, s5);

assign result = (operand2 >31) ? ((dir == 0) ? 0 : ((arith==0) ? 0 : operand1[31]==0 ? 0 : 32'b11111111111111111111111111111111)) : s5;

endmodule