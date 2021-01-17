`timescale 1ns / 1ps

module IF_ID(
    input clk,
    input reset,
    input en01,
    input [31:0] ins_01_I,
    output reg [31:0] ins_01_O,
    input [31:0] PC_01_I,
    output reg [31:0] PC_01_O
    );

    initial begin
        ins_01_O<=0;
        PC_01_O<=32'h00003000;
    end
    always @(posedge clk) begin
        if(en01)begin
            if(reset)begin
                ins_01_O<=0;
                PC_01_O<=32'h00003000;
            end
            else begin
                ins_01_O <= ins_01_I;
                PC_01_O <= PC_01_I;
            end
        end
    end


endmodule
