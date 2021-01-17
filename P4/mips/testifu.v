`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:25:32 11/17/2020
// Design Name:   IFU
// Module Name:   D:/Study/CO/P4/mips/testifu.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testifu;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] imm16;
	reg [25:0] bits26;
	reg [31:0] ra;
	reg [1:0] branch;
	reg beqTrue;

	// Outputs
	wire [31:0] PC;
	wire [31:0] cmd;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.clk(clk), 
		.reset(reset), 
		.imm16(imm16), 
		.bits26(bits26), 
		.ra(ra), 
		.branch(branch), 
		.beqTrue(beqTrue), 
		.PC(PC), 
		.cmd(cmd)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		imm16 = 0;
		bits26 = 0;
		ra = 0;
		branch = 0;
		beqTrue = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

