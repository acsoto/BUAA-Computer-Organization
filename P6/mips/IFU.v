`timescale 1ns / 1ps
module IFU(
	 input stall,
    input [31:0] PC,
    input [15:0] imm16,
    input [25:0] bits26,
    input [31:0] ra,
    input [1:0] jump,
    input bTrue,
    output [31:0] NPC
    );
	 
    wire [31:0] bPC;
    EXT _ext_IFU(imm16,2'b11,bPC);
	 
	 
    wire  [31:0] NPC_0 = (jump==2'b11)?ra:			//jr
								 (jump==2'b10)?{PC[31:28],bits26,2'b00}://j 26
								 (PC+4);//
    wire  [31:0] NPC_1 = (bTrue)?(PC+bPC):NPC_0;

	 assign       NPC   = (stall)?PC:NPC_1;



endmodule
