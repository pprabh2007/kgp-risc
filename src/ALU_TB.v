`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:52 10/30/2019
// Design Name:   ALU
// Module Name:   D:/Xilinx_ISE_DS_Win_14.7_1015_1/ALU/ALU_TB.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [1:0] op_code;
	reg [3:0] func_code;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] LOW;
	wire [31:0] HIGH;
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.op_code(op_code), 
		.func_code(func_code), 
		.A(A), 
		.B(B), 
		.LOW(LOW), 
		.HIGH(HIGH)
	);

	initial begin
		// Initialize Inputs
		// add immediate
		op_code = 2'b00;
		func_code = 4'b0000;
		A = 32'b00000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
      // compliment immediate
		op_code = 2'b00;
		func_code = 4'b0001;
		A = 32'b10000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
		//addition
		op_code = 2'b001;
		func_code = 4'b0000;
		A = 32'b10000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
		// multiply unsigned
		op_code = 2'b01;
		func_code = 4'b0001;
		A = 32'b10000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
		// multiply signed
		op_code = 2'b01;
		func_code = 4'b0010;
		A = 32'b10000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
		//compliment
		op_code = 2'b01;
		func_code = 4'b0011;
		A = 32'b10000000000000000000000000000010;
		B = 32'b10000000000000000000000000000010;
		#10;
		//shift left logical
		op_code = 2'b00;
		func_code = 4'b0010;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		// shift right logical
		op_code = 2'b00;
		func_code = 4'b0011;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		// shift right arithmatic
		op_code = 2'b00;
		func_code = 4'b0100;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		// shift right logical variable
		op_code = 2'b01;
		func_code = 4'b0110;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		// shift left logical variable
		op_code = 2'b01;
		func_code = 4'b0111;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		// shiftright arithmetic variable
		op_code = 2'b01;
		func_code = 4'b1000;
		A = 32'b10000000000000000000000000000010;
		B = 32'b00000000000000000000000000000010;
		#10;
		
		// Add stimulus here

	end
      
endmodule

