`timescale 1ns / 1ps
module IF(
    input clk,
    input reset,
    input [31:0] NPC,
    output reg [31:0] PC,
    output [31:0] ins
    );

    reg [31:0] IM[4095:0];
	 wire [31:0] pc = PC - 32'h00003000 ;
    assign ins = IM[pc[13:2]];

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

endmodule
