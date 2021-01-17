`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:06 11/15/2020
// Design Name:   ALU
// Module Name:   D:/Study/CO/P4/mips/ALUtest.v
// Project Name:  mips
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

module ALUtest;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg [3:0] OP;

	// Outputs
	wire zero;
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.in1(in1), 
		.in2(in2), 
		.OP(OP), 
		.zero(zero), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 3;
		in2 = 5;
		OP = 0;
		#2
		in1 = 5;
		in2 = 5;
		OP = 1;
		#2
		in1 = 32'b1;
		in2 = 32'b101;
		OP = 2;
		#2
		in1 = 32'b1;
		in2 = 32'b101;
		OP = 3;
		#2
		in1 = 3;
		in2 = 32'b11101;
		OP = 4;

		// Add stimulus here

	end
      
endmodule

