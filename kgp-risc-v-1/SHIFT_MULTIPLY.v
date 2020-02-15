`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:04 10/30/2019 
// Design Name: 
// Module Name:    SHIFT_MULTIPLY 
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
module SHIFT_MULTIPLY(input[31:0] high_i, input[31:0]low_i, output[31:0] high_o, output[31:0] low_o);
    
    assign high_o[31:1] = high_i[30:0];
    assign high_o[0] = low_i[31];
    assign low_o[31:1] = low_i[30:0];
    assign low_o[0] = 1'b0;
    
endmodule