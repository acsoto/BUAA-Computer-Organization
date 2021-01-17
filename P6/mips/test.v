`timescale 1ns / 1ps



module test;

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
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #0.01 clk=~clk;
	always @(posedge clk ) begin
		if(uut._IF.PC + 4>= 32'h00004000)$finish;
	end
      
endmodule

