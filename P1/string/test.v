`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:50:52 10/29/2020
// Design Name:   string
// Module Name:   D:/Study/CO/P1/string/test.v
// Project Name:  string
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);
	reg [0:1023] string = "++1";
	
	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		while(string[0:7]==8'b0)string=string<<8;
		for(;string[0:7]!=8'b0;string=string<<8)begin
			in=string[0:7];
			#4;
		end

	end
   always #2 clk=~clk;
endmodule

