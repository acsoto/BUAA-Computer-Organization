`timescale 1ns / 1ps
module ID(
    input stall,
    input [31:0] PC_0,
    input [31:0] instr_1_I,
    output [5:0] op_1,
    output [5:0] func_1,
    output [4:0] rd_1,
    output [4:0] rt_1,
    output [4:0] rs_1,
    output [31:0] NPC_1,
    input [31:0] regRD1_1,
    input [31:0] regRD2_1,
	output [1:0] RegDst,
    output [31:0] EXTout,
    output [1:0] Tnew_1,
    output [1:0] rsTuse,
    output [1:0] rtTuse,
    output RegWrite_1
    );

    wire [15:0]imm16;
    wire [25:0]bits26;

    assign op_1 = instr_1_I[31:26];
    assign func_1 = instr_1_I[5:0];
    assign rd_1 = instr_1_I[15:11];
    assign rt_1 = instr_1_I[20:16];
    assign rs_1 = instr_1_I[25:21];
    assign imm16 = instr_1_I[15:0];
    assign bits26 = instr_1_I[25:0];	
    
    wire zero,isbeq,beqTrue;
    wire [1:0] extsel,branch;
    wire [1:0] Tuse;
    assign beqTrue = isbeq & zero;

    Controller ctr_1(
        .op(op_1),
        .func(func_1),
        .extsel(extsel),
        .RegDst(RegDst),
        .branch(branch),
        .isbeq(isbeq),
        .RegWrite(RegWrite_1),
        .rsTuse(rsTuse),
        .rtTuse(rtTuse),
        .Tnew(Tnew_1)
        );

    EXT _EXT_1(imm16,extsel,EXTout);
    
    
    CMP _CMP_1(.A(regRD1_1),.B(regRD2_1),.equal(zero));
    IFU _IFU_1(stall,PC_0,imm16,bits26,regRD1_1,branch,beqTrue,NPC_1);



endmodule
