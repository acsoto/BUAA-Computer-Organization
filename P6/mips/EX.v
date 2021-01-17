`timescale 1ns / 1ps
module EX(
  	 input clk,
 	 input reset,
    input [31:0] regRD1_2,
    input [31:0] regRD2_2,
    input [31:0] ins_2,
	 input [31:0] PC_2,
    output [31:0] ALUout_2,
	 output busy_2
    );

    wire ALUSrc1,ALUSrc2;
	 wire [1:0]extsel;
	 wire isWritePC;
    wire [31:0]  ALUout,ALUSrcout1,ALUSrcout2;
	 wire [3:0] ALU;
	 
	 wire [4:0]   s  = ins_2[10:6];
	 wire [31:0]  s32 = {{27{1'b0}},s};

	 wire [15:0] imm16 = ins_2[15:0];
	 wire [31:0] imm32;
	 EXT _EXT_2(imm16,extsel,imm32);
	 
	 
	 wire [3:0]mdOP;
	 wire busy;
    Controller ctr_2(
        .ins(ins_2),
        .ALUSrc1(ALUSrc1),
        .ALUSrc2(ALUSrc2),
        .extsel(extsel),
        .ALU(ALU),
        .mdOP(mdOP),
		  .isWritePC(isWritePC)
        );
		  
    mux_2_32b _ALUSrc1(ALUSrc1,regRD1_2,s32,ALUSrcout1);
    mux_2_32b _ALUSrc2(ALUSrc2,regRD2_2,imm32,ALUSrcout2);
    ALU _ALU(ALUSrcout1,ALUSrcout2,ALU,ALUout);


	 assign ALUout_2 = (isWritePC)?(PC_2+8):
							 (mdOP==7)?HI:
							 (mdOP==8)?LO:
							  ALUout;

	 wire [31:0] HI,LO;
	 wire start = (mdOP!=0);
	 assign busy_2 = busy|start;
	 multdiv _multdiv(clk,reset,mdOP,regRD1_2,regRD2_2,HI,LO,busy);


endmodule
