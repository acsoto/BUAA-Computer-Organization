`timescale 1ns / 1ps

module DM(
    input clk,
    input reset,
    input [5:0] op_3,
    input [5:0] func_3,
    input [31:0] WPC,
    input [31:0] Address,
    input [31:0] WD,
    output [31:0] RD
    );
    reg[31:0] regs[12287:0];
    assign RD = regs[Address[15:2]];

    wire MemWrite;
    Controller ctr_3(
        .op(op_3),
        .func(func_3),
        .MemWrite(MemWrite)
        );


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
                regs[Address[15:2]]<=WD;
                $display("%d@%h: *%h <= %h", $time, WPC, Address,WD);
            end
        end
    end


endmodule
