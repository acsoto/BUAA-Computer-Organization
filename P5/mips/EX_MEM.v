`timescale 1ns / 1ps

module EX_MEM(
    input clk,
    input reset,
    input en23,
    input [5:0] op_23_I,
    output reg [5:0] op_23_O,
    input [5:0] func_23_I,
    output reg [5:0] func_23_O,
    input [31:0] PC_23_I,
    output reg [31:0] PC_23_O,
    input [4:0] rs_23_I,
    output reg [4:0] rs_23_O,
    input [4:0] rt_23_I,
    output reg [4:0] rt_23_O,
    input [1:0] Tnew_23_I,
    output reg [1:0] Tnew_23_O,
    input RegWrite_23_I,
    output reg RegWrite_23_O,
    input [4:0] regWA_23_I,
    output reg [4:0] regWA_23_O,
    input [31:0] ALUOut_23_I,
    output reg [31:0] ALUOut_23_O,
    input [31:0] regRD2_23_I,
    output reg [31:0] regRD2_23_O
    );

    initial begin
        op_23_O<=0;
        func_23_O<=0;
        PC_23_O<=0;
        regWA_23_O<=0;
        ALUOut_23_O<=0;
        regRD2_23_O<=0;
        RegWrite_23_O<=0;
        Tnew_23_O<=0;
    end

    always @(posedge clk) begin
        if(en23)begin
            if(reset)begin
                op_23_O<=0;
                func_23_O<=0;
                // PC_23_O<=0;
                // ALUOut_23_O<=0;
                // regRD2_23_O<=0;
            end
            else begin
                op_23_O<=op_23_I;
                func_23_O<=func_23_I;
                PC_23_O<=PC_23_I;
                regWA_23_O<=regWA_23_I;
                ALUOut_23_O<=ALUOut_23_I;
                regRD2_23_O<=regRD2_23_I;
                RegWrite_23_O<=RegWrite_23_I;
                Tnew_23_O<=(Tnew_23_I==0)?0:(Tnew_23_I-1);
                rs_23_O<=rs_23_I;
                rt_23_O<=rt_23_I;
            end
        end
    end

endmodule
