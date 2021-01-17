`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:51 11/15/2020
// Design Name:   GRF
// Module Name:   D:/Study/CO/P4/mips/GRFtest.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GRFtest;

	// Inputs
	reg [31:0] WPC;
	reg clk;
	reg reset;
	reg we;
	reg [4:0] RA1;
	reg [4:0] RA2;
	reg [4:0] WA;
	reg [31:0] WD;

	// Outputs
	wire [31:0] RD1;
	wire [31:0] RD2;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.WPC(WPC), 
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.RA1(RA1), 
		.RA2(RA2), 
		.WA(WA), 
		.WD(WD), 
		.RD1(RD1), 
		.RD2(RD2)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		WA=6;
		WD=5;
		#2
		WA=7;
		we=1;
		WD=3;
		#2
		WA=0;
		WD=3;
		#2
		RA1=7;
		RA2=8;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always #1 clk=~clk;
endmodule

