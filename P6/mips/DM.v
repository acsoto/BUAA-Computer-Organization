`timescale 1ns / 1ps

module DM(
    input clk,
    input reset,
    input [31:0] ins_3,
    input [31:0] WPC,
    input [31:0] Address,
    input [31:0] WD,
    output [31:0] RD
    );
	 
	 
    reg[31:0] regs[4095:0];
    assign RD = regs[Address[13:2]];
	 wire [31:0] WD_new;
	 ByteData _ByteData(ins_3,RD,WD,WD_new,Address[1:0]);
	 

    wire MemWrite;
    Controller ctr_3(
        .ins(ins_3),
        .MemWrite(MemWrite)
        );


    integer i;
    initial begin
        for (i = 0; i<4096 ;i=i+1 ) begin
            regs[i]<=0;
        end
    end

    always @(posedge clk) begin
        if(reset)begin
            for (i = 0;i<4096 ;i=i+1 ) begin
                regs[i]<=0;
            end
        end
        else begin
            if(MemWrite)begin
                regs[Address[13:2]]<=WD_new;
                $display("%d@%h: *%h <= %h", $time, WPC, {18'b0,Address[13:2],2'b00}, WD_new);
            end
        end
    end


endmodule
