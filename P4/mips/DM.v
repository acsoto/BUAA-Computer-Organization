`timescale 1ns / 1ps

module DM(
    input [31:0] WPC,
    input clk,
    input reset,
    input MemWrite,
    input [31:0] Address,
    input [31:0] WD,
    output [31:0] RD
    );
    reg[31:0] regs[1023:0];
    assign RD = regs[Address[11:2]];


    integer i;

    initial begin
        for (i = 0; i<1024 ;i=i+1 ) begin
            regs[i]<=0;
        end
    end

    always @(posedge clk) begin
        if(reset)begin
            for (i = 0;i<1024 ;i=i+1 ) begin
                regs[i]<=0;
            end
        end
        else begin
            if(MemWrite)begin
                regs[Address[11:2]]<=WD;
                $display("@%h: *%h <= %h", WPC, Address, WD);
            end
        end
    end


endmodule
