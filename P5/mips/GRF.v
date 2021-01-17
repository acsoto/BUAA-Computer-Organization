`timescale 1ns / 1ps

module GRF(
    input [31:0] WPC,
    input clk,
    input reset,
    input we,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2
    );

    reg[31:0] regs[31:0];

    assign RD1 = ((RA1==WA)&&(RA1!=0)&&(we))?WD:regs[RA1];
    assign RD2 = ((RA2==WA)&&(RA2!=0)&&(we))?WD:regs[RA2];


    integer i;

    initial begin
        for (i = 0;i<32 ;i=i+1 ) begin
            regs[i]<=0;
        end
    end

    always @(posedge clk) begin
        if(reset)begin
            for (i = 0;i<32 ;i=i+1 ) begin
                regs[i]<=0;
            end
        end
        else begin
            if(we&&(WA!=0))begin
                regs[WA]<=WD;
                $display("%d@%h: $%d <= %h", $time, WPC, WA,WD);
            end
        end
    end


endmodule
