`timescale 1ns / 1ps
module IFU(
    input clk,
    input reset,
    input [15:0] imm16,
    input [25:0] bits26,
    input [31:0] ra,
    input [1:0]branch,
    input beqTrue,
    output reg [31:0] PC,
    output [31:0] cmd
    );
    wire [31:0] PCp4;
    wire [31:0] beqPC;

    reg[31:0] IM[1023:0];
    reg[31:0] NPC;
    reg[31:0] NPC_0;

    assign cmd = IM[PC[11:2]];
    assign PCp4 = PC+4;

    initial begin
        PC <= 32'h00003000;
        $readmemh("code.txt",IM);
    end

    always @(posedge clk) begin
        if(reset)begin
            PC <= 32'h00003000;
        end
        else begin
            PC <= NPC;
        end
    end

    //选择+4,j,jar
    always @(*) begin
        case (branch)
            2'b00: //PC+4
                NPC_0<=PCp4;
            2'b01: //?
                NPC_0<=PCp4;
            2'b10: //j or jal
                NPC_0<={PCp4[31:28],bits26,2'b00};
            2'b11: //jr
                NPC_0<=ra;
            default: NPC_0<=PCp4;
        endcase
    end

    //choose NPC_0 or beq
    EXT ext(imm16,2'b11,beqPC);
    always @(*) begin
        case (beqTrue)
            0: NPC<=NPC_0;
            1: NPC<=PCp4+beqPC;
            default: NPC<=NPC_0;
        endcase
    end


endmodule
