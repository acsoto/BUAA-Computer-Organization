`timescale 1ns / 1ps
module mux_2_1b(
    input sel,
	input in0,
	input in1,
	output reg out
    );
	always @(*) begin
        case(sel)
        0: out<=in0;
        1: out<=in1;
        endcase
    end
endmodule


module mux_4_5b(
    input [1:0]sel,
	input [4:0]in0,
	input [4:0]in1,
	input [4:0]in2,
	input [4:0]in3,
	output reg [4:0]out
    );
	always @(*) begin
        case(sel)
        2'b00: out<=in0;
        2'b01: out<=in1;
        2'b10: out<=in2;
        2'b11: out<=in3;
        endcase
    end
endmodule

module mux_2_32b(
    input sel,
	input [31:0]in0,
	input [31:0]in1,
	output reg [31:0]out
    );
	always @(*) begin
        case(sel)
        0: out<=in0;
        1: out<=in1;
        endcase
    end
endmodule

module mux_4_32b(
    input [1:0]sel,
	input [31:0]in0,
	input [31:0]in1,
	input [31:0]in2,
	input [31:0]in3,
	output reg [31:0]out
    );
	always @(*) begin
        case(sel)
        2'b00: out<=in0;
        2'b01: out<=in1;
        2'b10: out<=in2;
        2'b11: out<=in3;
        endcase
    end
endmodule