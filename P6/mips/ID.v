`timescale 1ns / 1ps
module ID(
    input stall,
    input [31:0] PC_0,
    input [31:0] ins_1,
    output [5:0] op_1,
    output [5:0] func_1,
    output [4:0] rd_1,
    output [4:0] rt_1,
    output [4:0] rs_1,
    output [31:0] NPC_1,
    input [31:0] regRD1_1,
    input [31:0] regRD2_1,
	 output [1:0] RegDst,
    output [1:0] Tnew_1,
    output [1:0] rsTuse,
    output [1:0] rtTuse,
    output RegWrite_1,
	 output ID_is_md_ins
    );


    assign op_1 = ins_1[31:26];
    assign func_1 = ins_1[5:0];
    assign rd_1 = ins_1[15:11];
    assign rt_1 = ins_1[20:16];
    assign rs_1 = ins_1[25:21];
    wire [15:0]  imm16 = ins_1[15:0];
    wire [25:0] bits26 = ins_1[25:0];	
    
    wire beq,bne,bgez,bgtz,blez,bltz;
    wire [1:0] jump;
    wire [1:0] Tuse;
	 
	 wire equal = (regRD1_1==regRD2_1);
    wire beqTrue = beq & equal;
    wire bneTrue = bne & (~equal);
    wire bgezTrue = bgez & ($signed(regRD1_1)>=0);
    wire bgtzTrue = bgtz & ($signed(regRD1_1)>0);
    wire blezTrue = blez & ($signed(regRD1_1)<=0);
    wire bltzTrue = bltz & ($signed(regRD1_1)<0);
	 wire bTrue = beqTrue|bneTrue|bgezTrue|bgtzTrue|blezTrue|bltzTrue;
	 
	 wire [3:0]mdOP;

    Controller ctr_1(
        .ins(ins_1),
        .RegDst(RegDst),
        .jump(jump),
        .beq(beq),
        .bne(bne),
        .bgez(bgez),
        .bgtz(bgtz),
        .blez(blez),
        .bltz(bltz),
        .RegWrite(RegWrite_1),
        .rsTuse(rsTuse),
        .rtTuse(rtTuse),
		  .mdOP(mdOP),
        .Tnew(Tnew_1)
        );
		  
	 assign ID_is_md_ins = (mdOP!=0);
    IFU _IFU_1(stall,PC_0,imm16,bits26,regRD1_1,jump,bTrue,NPC_1);



endmodule
