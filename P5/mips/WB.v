`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module WB(
    input [5:0] op_4,
    input [5:0] func_4,
    input [31:0] PC_4,
    input [4:0] regWA_4,
    input [31:0] memRD_4,
    input [31:0] ALUout_4,
	output [31:0] toRegout_4
    );
    wire zero; 
    wire ALUSrc;
    wire [3:0] ALU;
    wire [1:0] toReg;

    Controller ctr_4(
        .op(op_4),
        .func(func_4),
        .toReg(toReg)
        );

    mux_4_32b _toReg(toReg,ALUout_4,memRD_4,32'b0,32'b0,toRegout_4);


endmodule
