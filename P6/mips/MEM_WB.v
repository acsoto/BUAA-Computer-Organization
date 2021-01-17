`timescale 1ns / 1ps

module MEM_WB(
    input clk,
    input reset,
    input en34,
	 input [31:0] ins_34_I,
	 output reg [31:0] ins_34_O,
    input [31:0] PC_34_I,
    output reg [31:0] PC_34_O,
    input [1:0] Tnew_34_I,
    output reg [1:0] Tnew_34_O,
    input RegWrite_34_I,
    output reg RegWrite_34_O,
    input [4:0] regWA_34_I,
    output reg [4:0] regWA_34_O,
    input [31:0] ALUOut_34_I,
    output reg [31:0] ALUOut_34_O,
    input [31:0] memRD_34_I,
    output reg [31:0] memRD_34_O
    );

    initial begin
        ins_34_O<=0;
        PC_34_O<=0;
        regWA_34_O<=0;
        ALUOut_34_O<=0;
        memRD_34_O<=0;
        RegWrite_34_O<=0;
        Tnew_34_O<=0;
    end
    always @(posedge clk) begin
        if(en34)begin
            if(reset)begin
					  ins_34_O<=0;
					  PC_34_O<=0;
					  regWA_34_O<=0;
					  ALUOut_34_O<=0;
					  memRD_34_O<=0;
					  RegWrite_34_O<=0;
					  Tnew_34_O<=0;
            end
            else begin
                ins_34_O<=ins_34_I;
                PC_34_O<=PC_34_I;
                regWA_34_O<=regWA_34_I;
                ALUOut_34_O<=ALUOut_34_I;
                memRD_34_O<=memRD_34_I;
                RegWrite_34_O<=RegWrite_34_I;
                Tnew_34_O<=(Tnew_34_I==0)?0:(Tnew_34_I-1);
            end
        end
    end
endmodule
