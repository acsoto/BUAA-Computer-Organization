`timescale 1ns / 1ps
module ALU(
    input [31:0] in1,
    input [31:0] in2,
    input [3:0] OP,
    output zero,
    output [31:0] out
    );

assign out=(OP==0)?(in1+in2):
		 (OP==1)?(in1-in2):
		 (OP==2)?(in1|in2):
		 (OP==3)?(in1&in2):
		 (OP==4)?(in2<<16):0;

assign zero=(out==0);

endmodule
