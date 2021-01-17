`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:49 11/16/2020
// Design Name:   Controller
// Module Name:   D:/Study/CO/P4/mips/ctrtest.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrtest;

	// Inputs
	reg [5:0] op;
	reg [5:0] func;

	// Outputs
	wire RegDst;
	wire RegWrite;
	wire ALUSrc;
	wire branch;
	wire PCJump; 
	wire MemWrite;
	wire MemtoReg;
	wire [3:0] ALU;

	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.op(op), 
		.func(func), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUSrc(ALUSrc), 
		.branch(branch), 
		.PCJump(PCJump), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.ALU(ALU)
	);

	initial begin
		// Initialize Inputs
		op = 6'b000000;
		func = 6'b100001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

