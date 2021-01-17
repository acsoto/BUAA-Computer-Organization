`timescale 1ns / 1ps
module mips(
    input clk,
    input reset
    );

    wire [31:0] PC_0,PC_1,PC_2,PC_3,PC_4;
    wire [31:0] ins_0,ins_1,ins_2,ins_3,ins_4;
    wire [5:0] op_1;
    wire [5:0] func_1;
    wire [4:0] regWA_1,regWA_2,regWA_3,regWA_4; //ID_EX: changename from dstout to regWA
    wire [31:0] NPC;
    wire [31:0] ALUOut_2,ALUOut_3,ALUOut_4;
    wire [31:0] toRegout;
    wire [31:0] MEMout;
    wire [31:0] memRD_4;
    wire [31:0] regRD1_1,regRD2_1,regRD1_2,regRD2_2,regRD2_3;
    wire [4:0] rd_1,rt_1,rs_1,rt_2,rs_2,rt_3,rs_3;
    wire en01,en12,en23,en34;
    wire RegWrite_1,RegWrite_2,RegWrite_3,RegWrite_4;
    wire [1:0] RegDst;
    wire [1:0] Tnew_1,Tnew_2,Tnew_3,Tnew_4;  //从Tnew2即E级开始计数，1产生直接传递给2�逐次递减
    wire [1:0]forward_RS_1,forward_RT_1,forward_RS_2,forward_RT_2;
    wire [31:0]forward_RSout_1,forward_RTout_1,forward_RSout_2,forward_RTout_2;
    wire [31:0] forward_MEMWDout_3;
    wire forward_MEMWD_3;
    wire [1:0]rsTuse,rtTuse;
	 wire busy_2;
	 wire hazard_stall,ID_is_md_ins;
    assign en12=1;
    assign en23=1;
    assign en34=1;
	 
	 wire stall = (ID_is_md_ins&busy_2)|hazard_stall;
	 
    GRF _GRF(PC_4,clk,reset,RegWrite_4,rs_1,rt_1,regWA_4,toRegout,regRD1_1,regRD2_1);

    IF _IF(clk,reset,NPC,PC_0,ins_0);

    IF_ID _IF_ID(clk,reset,~stall,ins_0,ins_1,PC_0,PC_1);
    ID _ID(stall,PC_0,ins_1,op_1,func_1,rd_1,rt_1,rs_1,NPC,forward_RSout_1,forward_RTout_1,RegDst,Tnew_1,rsTuse,rtTuse,RegWrite_1,ID_is_md_ins);
    mux_4_5b _RegDst_1(RegDst,rt_1,rd_1,5'd31,5'b0,regWA_1);
    mux_4_32b _forward_RS_1(forward_RS_1,regRD1_1,toRegout,ALUOut_3,0,forward_RSout_1); 
    mux_4_32b _forward_RT_1(forward_RT_1,regRD2_1,toRegout,ALUOut_3,0,forward_RTout_1); //转发给ID regRD1和regRD2
    
    ID_EX _ID_EX(clk,reset|stall,en12,ins_1,ins_2,PC_1,PC_2,Tnew_1,Tnew_2,RegWrite_1,RegWrite_2,regWA_1,regWA_2,forward_RSout_1,regRD1_2,forward_RTout_1,regRD2_2);
    EX _EX(clk,reset,forward_RSout_2,forward_RTout_2,ins_2,PC_2,ALUOut_2,busy_2);
    mux_4_32b _forward_RS_2(forward_RS_2,regRD1_2,toRegout,ALUOut_3,0,forward_RSout_2); 
    mux_4_32b _forward_RT_2(forward_RT_2,regRD2_2,toRegout,ALUOut_3,0,forward_RTout_2); //转发给EX regRD1和regRD2
    
    EX_MEM _EX_MEM(clk,reset,en23,ins_2,ins_3,PC_2,PC_3,Tnew_2,Tnew_3,RegWrite_2,RegWrite_3,regWA_2,regWA_3,ALUOut_2,ALUOut_3,forward_RTout_2,regRD2_3);
    DM _DM(clk,reset,ins_3,PC_3,ALUOut_3,forward_MEMWDout_3,MEMout);
    mux_2_32b _forward_MEMWD_3(forward_MEMWD_3,regRD2_3,toRegout,forward_MEMWDout_3); //转发给MEMWD
    
    MEM_WB _MEM_WB(clk,reset,en34,ins_3,ins_4,PC_3,PC_4,Tnew_3,Tnew_4,RegWrite_3,RegWrite_4,regWA_3,regWA_4,ALUOut_3,ALUOut_4,MEMout,memRD_4);
    WB _WB(ins_4,PC_4,regWA_4,memRD_4,ALUOut_4,toRegout);

    Hazard _Hazard(regWA_2,regWA_3,regWA_4,RegWrite_2,RegWrite_3,RegWrite_4,rs_1,rt_1,ins_2[25:21],ins_2[20:16],ins_3[20:16],Tnew_2,Tnew_3,Tnew_4,rsTuse,rtTuse,hazard_stall,forward_RS_1,forward_RT_1,forward_RS_2,forward_RT_2,forward_MEMWD_3);


endmodule
