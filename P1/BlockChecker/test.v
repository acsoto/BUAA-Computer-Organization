`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:14:47 10/30/2020
// Design Name:   BlockChecker
// Module Name:   D:/Study/CO/P1/BlockChecker/test.v
// Project Name:  BlockChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
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
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

initial begin
    // Initialize Inputs
    clk = 0;
    reset = 0;
    in = 0;

    in = "a";
    #10;
    in = " ";
    #10;
    in = "b";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "N";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "D";
    #10;
    in = "c";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "d";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "d";
    #10;
    in = " ";
    #10;
    in = "b";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "N";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "N";
    #10;
    reset = 1;
    #10;
    reset = 0;
    in = "b";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "n";
    #10;
    in = "b";
    #10;
    in = " ";
    #10
    in = "b";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "n";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "D";
    #10;
    in = "c";
    #10;
    in = " ";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "d";
    #10;
    in = " ";
    #10;
    in = " ";
    #10;
    in = "e";
    #10;
    in = "n";
    #10;
    in = "d";
    #10;
    in = " ";
    #10;
    in = "b";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "N";
    #10;
    in = "e";
    #10;
    in = "g";
    #10;
    in = "i";
    #10;
    in = "N";
    #10;
end
always #5 clk = ~clk;
      
endmodule

