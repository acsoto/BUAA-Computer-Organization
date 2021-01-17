`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
module ID_EX(
    input clk,
    input reset,
    input en12,
	 input [31:0] ins_12_I,
	 output reg [31:0] ins_12_O,
    input [31:0] PC_12_I,
    output reg [31:0] PC_12_O,
    input [1:0] Tnew_12_I,
    output reg [1:0] Tnew_12_O,
    input RegWrite_12_I,
    output reg RegWrite_12_O,
    input [4:0] regWA_12_I,
    output reg [4:0] regWA_12_O,
    input [31:0] regRD1_12_I,
    output reg [31:0] regRD1_12_O,
    input [31:0] regRD2_12_I,
    output reg [31:0] regRD2_12_O
    );

    initial begin
        ins_12_O<=0;
        PC_12_O<=0;
        regWA_12_O<=0;
        regRD1_12_O<=0;
        regRD2_12_O<=0;
        RegWrite_12_O<=0;
        Tnew_12_O<=0;
    end
    always @(posedge clk) begin
        if(en12)begin
            if(reset)begin
                ins_12_O<=0;
                PC_12_O<=0;
                regWA_12_O<=0;
                regRD1_12_O<=0;
                regRD2_12_O<=0;
                RegWrite_12_O<=0;
                Tnew_12_O<=0;
            end
            else begin
                ins_12_O<=ins_12_I;
                PC_12_O<=PC_12_I;
                regWA_12_O<=regWA_12_I;
                regRD1_12_O<=regRD1_12_I;
                regRD2_12_O<=regRD2_12_I;
                RegWrite_12_O<=RegWrite_12_I;
                Tnew_12_O<=Tnew_12_I;
            end
        end
    end

endmodule
