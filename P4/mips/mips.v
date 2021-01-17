`timescale 1ns / 1ps

module mips(
    input clk,
    input reset
    );

    wire [4:0] rd,rt,rs,RegDstout;
    wire [5:0] op,func;
    wire [15:0] imm16;
    wire [25:0] bits26;
    wire [31:0] Instr;
    wire [31:0] PC;
    wire [31:0] ALUout,toRegout,GRFout1,GRFout2,Memout,ALUSrcout,EXTout;
    wire [3:0] ALUCtrl;
    wire zero;
    wire beq;
    wire RegWrite,ALUSrc,MemWrite,beqTrue;
    wire [1:0] RegDst,branch,toReg,extsel;
    /////////
    assign rd = Instr[15:11];
    assign rt = Instr[20:16];
    assign rs = Instr[25:21];
    assign op = Instr[31:26];
    assign func = Instr[5:0];
    assign imm16 = Instr[15:0];
    assign bits26 = Instr[25:0];
    assign beqTrue =beq&zero;
    //_信号=信号的选择器
    //_模块=实例化
    IFU _IFU(clk,reset,imm16,bits26,GRFout1,branch,beqTrue,PC,Instr);
    GRF _GRF(PC,clk,reset,RegWrite,rs,rt,RegDstout,toRegout,GRFout1,GRFout2); 
    ALU _ALU(GRFout1,ALUSrcout,ALUCtrl,zero,ALUout);
    Controller _Controller(op,func,RegDst,RegWrite,ALUSrc,branch,beq,MemWrite,toReg,extsel,ALUCtrl);
    DM _DM(PC,clk,reset,MemWrite,ALUout,GRFout2,Memout);
    EXT _EXT(imm16,extsel,EXTout);
    mux_4_5b _RegDst(RegDst,rt,rd,5'd31,5'b0,RegDstout);
    mux_2_32b _ALUSrc(ALUSrc,GRFout2,EXTout,ALUSrcout);
    mux_4_32b _toReg(toReg,ALUout,Memout,PC+4,32'b0,toRegout);
endmodule