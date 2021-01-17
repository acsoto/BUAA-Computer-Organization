`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:43 11/17/2020
// Design Name:   mips
// Module Name:   D:/Study/CO/P4/mips/mipstest.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mipstest;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		reset=0;
		//#10 reset=0;
		// Wait 100 ns for global reset to finish
		//#1000 $finish();
        
		// Add stimulus here

	end
	always #2 clk=~clk;
      
endmodule

