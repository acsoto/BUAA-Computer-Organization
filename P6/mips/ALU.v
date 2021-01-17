`timescale 1ns / 1ps
module ALU(
    input [31:0] in1,
    input [31:0] in2,
    input [3:0] OP,
    output [31:0] out
    );
//+ - | & ^ ~| <<16 << >> >>> <u <
assign out=
		 (OP==4'd0)?(in1+in2):
		 (OP==4'd1)?(in1-in2):
		 (OP==4'd2)?(in1|in2):
		 (OP==4'd3)?(in1&in2):
		 (OP==4'd4)?(in1^in2):
		 (OP==4'd5)?(~(in1|in2)):
		 (OP==4'd6)?(in2<<16):
		 (OP==4'd7)?(in2<<in1[4:0]):
		 (OP==4'd8)?(in2>>in1[4:0]):
		 (OP==4'd9)?($signed($signed(in2) >>> in1[4:0])):
		 (OP==4'd10)?(in1<in2):
		 (OP==4'd11)?(($signed(in1)<$signed(in2))?32'b1:32'b0):0;


endmodule
