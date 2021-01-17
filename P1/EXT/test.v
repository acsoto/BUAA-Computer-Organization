`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:44 10/26/2020
// Design Name:   ext
// Module Name:   D:/Study/CO/P1/EXT/test.v
// Project Name:  EXT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
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
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 16'b1000000000000001;
		EOp = 2'b00;
		#5
		imm = 16'b1000000000000001;
		EOp = 2'b01;
		#5
		imm = 16'b1000000000000001;
		EOp = 2'b10;
		#5
		imm = 16'b1000000000000001;
		EOp = 2'b11;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

