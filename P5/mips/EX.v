`timescale 1ns / 1ps
module EX(
    input [31:0] regRD1_2,
    input [31:0] regRD2_2,
    input [31:0] imm_2,
    input [5:0] op_2,
    input [5:0] func_2,
    input [31:0] PC_2,
    output [31:0] ALUout_2
    );
    wire zero; 
    wire ALUSrc;
    wire isWirte31;
    wire [3:0] ALU;
    wire [31:0] ALUout;
    wire [31:0] ALUSrcout;
    Controller ctr_01(
        .op(op_2),
        .func(func_2),
        .ALUSrc(ALUSrc),
        .ALU(ALU),
        .isWirtePC(isWirtePC)
        );
    mux_2_32b _ALUSrc(ALUSrc,regRD2_2,imm_2,ALUSrcout);
    ALU _ALU(regRD1_2,ALUSrcout,ALU,zero,ALUout);
    mux_2_32b _newALUout(isWirtePC,ALUout,PC_2+8,ALUout_2);



endmodule
