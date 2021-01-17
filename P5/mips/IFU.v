`timescale 1ns / 1ps
module IFU(
	 input stall,
    input [31:0] PC,
    input [15:0] imm16,
    input [25:0] bits26,
    input [31:0] ra,
    input [1:0] branch,
    input beqTrue,
    output reg [31:0] NPC
    );
    wire [31:0] PCp4;
    wire [31:0] beqPC;
    reg[31:0] NPC_0;
    reg[31:0] NPC_1;
    assign PCp4 = PC+4;

    //选择+4,j,jar
    always @(*) begin
        case (branch)
            2'b00: //PC+4
                NPC_0<=PCp4;
            2'b01: //?
                NPC_0<=PCp4;
            2'b10: //j or jal
                NPC_0<={PC[31:28],bits26,2'b00};
            2'b11: //jr
                NPC_0<=ra;
            default: NPC_0<=PCp4;
        endcase
    end

    //choose NPC_0 or beq
    EXT _ext_IFU(imm16,2'b11,beqPC);
    
    always @(*) begin
        case (beqTrue)
            0: NPC_1<=NPC_0;
            1: NPC_1<=PC+beqPC;
            default: NPC_1<=NPC_0;
        endcase
    end

    always @(*) begin
        if(stall)begin
            NPC<=PC;
        end
        else begin
            NPC<=NPC_1;
        end
    end


endmodule
