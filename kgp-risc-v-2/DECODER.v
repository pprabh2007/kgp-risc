`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:28:55 11/01/2019 
// Design Name: 
// Module Name:    DECODER 
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
module DECODER(
	input[31:0] instr,
	output [4:0]rs,
	output [4:0]rt,
	output [25:0]imm,
	output [3:0] function_code,
	output [1:0] op_code
	);

wire[25:0] temp;

assign op_code = instr[31:30];
assign rs = (op_code == 2'b00 || op_code == 2'b01) ? instr[29:25] : 5'b00000;
assign rt  = (op_code == 2'b01) ? instr[24:20] : 5'b00000;
assign function_code = instr[3:0];
assign temp = instr[29:4];

assign imm[15:0] = temp[15:0];
assign imm[20:16] = (op_code == 2'b01) ? (imm[15]==0 ? 5'b00000 : 5'b11111 ) : temp[20:16] ;
assign imm[25:21] = (op_code == 2'b10) ? temp[25:21] : (imm[20]==0 ? 5'b00000 : 5'b11111); 

endmodule
