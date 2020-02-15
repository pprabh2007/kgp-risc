`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:28:39 10/28/2019 
// Design Name: 
// Module Name:    NOT 
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
module NOT(
	input[31:0] A, output[31:0] B
    );

assign B[0] = (A[0]==1) ? 1'b0 : 1'b1;
assign B[1] = (A[1]==1) ? 1'b0 : 1'b1;
assign B[2] = (A[2]==1) ? 1'b0 : 1'b1;
assign B[3] = (A[3]==1) ? 1'b0 : 1'b1;
assign B[4] = (A[4]==1) ? 1'b0 : 1'b1;
assign B[5] = (A[5]==1) ? 1'b0 : 1'b1;
assign B[6] = (A[6]==1) ? 1'b0 : 1'b1;
assign B[7] = (A[7]==1) ? 1'b0 : 1'b1;
assign B[8] = (A[8]==1) ? 1'b0 : 1'b1;
assign B[9] = (A[9]==1) ? 1'b0 : 1'b1;
assign B[10] = (A[10]==1) ? 1'b0 : 1'b1;
assign B[11] = (A[11]==1) ? 1'b0 : 1'b1;
assign B[12] = (A[12]==1) ? 1'b0 : 1'b1;
assign B[13] = (A[13]==1) ? 1'b0 : 1'b1;
assign B[14] = (A[14]==1) ? 1'b0 : 1'b1;
assign B[15] = (A[15]==1) ? 1'b0 : 1'b1;
assign B[16] = (A[16]==1) ? 1'b0 : 1'b1;
assign B[17] = (A[17]==1) ? 1'b0 : 1'b1;
assign B[18] = (A[18]==1) ? 1'b0 : 1'b1;
assign B[19] = (A[19]==1) ? 1'b0 : 1'b1;
assign B[20] = (A[20]==1) ? 1'b0 : 1'b1;
assign B[21] = (A[21]==1) ? 1'b0 : 1'b1;
assign B[22] = (A[22]==1) ? 1'b0 : 1'b1;
assign B[23] = (A[23]==1) ? 1'b0 : 1'b1;
assign B[24] = (A[24]==1) ? 1'b0 : 1'b1;
assign B[25] = (A[25]==1) ? 1'b0 : 1'b1;
assign B[26] = (A[26]==1) ? 1'b0 : 1'b1;
assign B[27] = (A[27]==1) ? 1'b0 : 1'b1;
assign B[28] = (A[28]==1) ? 1'b0 : 1'b1;
assign B[29] = (A[29]==1) ? 1'b0 : 1'b1;
assign B[30] = (A[30]==1) ? 1'b0 : 1'b1;
assign B[31] = (A[31]==1) ? 1'b0 : 1'b1;
endmodule