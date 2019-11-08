`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:55 10/30/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input[1:0] op_code, input[3:0] func_code, input[31:0] A, input[31:0] B, output[31:0] LOW, output[31:0] HIGH);

wire[5:0] op_func;
assign op_func[5:4] = op_code[1:0];
assign op_func[3:0] = func_code[3:0];

wire[31:0] and_result;
AND and_module(A, B, and_result);

wire[31:0] xor_result;
XOR xor_module(A, B, xor_result);

wire[31:0] adder_result;
wire adder_carry;
ADDER adder_module(A, B, adder_result, adder_carry);

wire[31:0] comp_result;
COMP comp_module(B, comp_result);

wire[31:0] shift_result;
wire shift_dir;
wire shift_arith;
assign shift_arith = ((op_func == 6'b000100) || (op_func == 6'b011000)) ? 1'b1 : 1'b0;
assign shift_dir = ((op_func == 6'b000010) || (op_func == 6'b010111)) ? 1'b0 : 1'b1;
SHIFT shift_module (A, B, shift_dir, shift_arith, shift_result);

wire[31:0] mutiplier_s_result_high;
wire[31:0] mutiplier_s_result_low;
MULTIPLIER_S multiplier_s_module(A, B, mutiplier_s_result_low, mutiplier_s_result_high);

wire[31:0] mutiplier_u_result_high;
wire[31:0] mutiplier_u_result_low;
MULTIPLIER_U multiplier_u_module(A, B, mutiplier_u_result_low, mutiplier_u_result_high);


wire[31:0] add_comp_choice;
assign add_comp_choice[31:0] = (op_func==6'b000000 || op_func == 6'b010000 || op_func == 6'b011001 || op_func == 6'b011010) ? adder_result : comp_result;
wire[31:0] mul_add_comp_choice;
assign mul_add_comp_choice = (op_func == 6'b010001) ? mutiplier_u_result_low : (op_func == 6'b010010 ? mutiplier_s_result_low : add_comp_choice );
wire[31:0] arith_logic_choice;
assign arith_logic_choice = (op_func == 6'b010100) ? and_result : (op_func == 6'b010101 ? xor_result : mul_add_comp_choice );

assign LOW =  ( op_func==6'b000010 || op_func==6'b000011 || op_func==6'b000100 || op_func==6'b010110 || op_func==6'b010111 || op_func==6'b011000 ) ? shift_result : arith_logic_choice;
assign HIGH = (op_func == 6'b010001) ? mutiplier_u_result_high : (op_func == 6'b010010 ? mutiplier_s_result_high : (LOW[31]==0 ? 0 : 32'b11111111111111111111111111111111));

endmodule

