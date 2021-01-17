`timescale 1ns / 1ps
module CMP(
    input [31:0] A,
    input [31:0] B,
    output equal,
    output bigger,
    output smaller
    );

    assign equal=(A==B);
    assign bigger=(A>B);
    assign smaller=(A<B);

endmodule
