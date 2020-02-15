`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:33 10/30/2019 
// Design Name: 
// Module Name:    BOOTH_SHIFTER 
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
module BOOTH_SHIFTER(
	input[31:0] high_i, input[31:0] low_i, output[31:0] high_o, output[31:0] low_o, output minus_o    );

assign minus_o = low_i[0];

assign low_o[31] = high_i[0];
assign low_o[30:0] = low_i[31:1];

assign high_o[30:0] = high_i[31:1];
assign high_o[31] = (high_i[31] == 0) ? 1'b0: 1'b1;

endmodule
