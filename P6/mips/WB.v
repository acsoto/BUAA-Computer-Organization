`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module WB(
    input [31:0] ins_4,
    input [31:0] PC_4,
    input [4:0] regWA_4,
    input [31:0] memRD_4,
    input [31:0] ALUout_4,
	output [31:0] toRegout_4
    );
	 
    wire [1:0] toReg;
	 wire [31:0] RD_new;

    Controller ctr_4(
        .ins(ins_4),
        .toReg(toReg)
        );

    mux_4_32b _toReg(toReg,ALUout_4,RD_new,32'b0,32'b0,toRegout_4);
	 ByteLoad _ByteLoad(ins_4,memRD_4,RD_new,ALUout_4[1:0]);


endmodule
