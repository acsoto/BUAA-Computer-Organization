`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:31 11/18/2020
// Design Name:   Controller
// Module Name:   D:/Study/CO/P4/mips/testctr2.v
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

module testctr2;

	// Inputs
	reg [5:0] op;
	reg [5:0] func;

	// Outputs
	wire [1:0] RegDst;
	wire RegWrite;
	wire ALUSrc;
	wire [1:0] branch;
	wire isbeq;
	wire MemWrite;
	wire [1:0] toReg;
	wire [1:0] extsel;
	wire [3:0] ALU;

	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.op(op), 
		.func(func), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUSrc(ALUSrc), 
		.branch(branch), 
		.isbeq(isbeq), 
		.MemWrite(MemWrite), 
		.toReg(toReg), 
		.extsel(extsel), 
		.ALU(ALU)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

