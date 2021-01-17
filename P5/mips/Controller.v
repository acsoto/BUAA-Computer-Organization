`timescale 1ns / 1ps

module Controller(
    input [5:0] op,
    input [5:0] func,
    output  [1:0] RegDst,
    output  RegWrite,
    output  ALUSrc,
    output  [1:0]branch,
    output  isbeq,
    output  MemWrite,
    output  [1:0]toReg,
    output  [1:0]extsel,
    output  isWirtePC,
    output  [3:0] ALU,
    output  [1:0] rsTuse,
    output  [1:0] rtTuse,
    output  [1:0] Tnew
    );
    wire addu, subu, ori, lw, sw, beq, lui, jar, jr, j , addi, jalr;

    assign addu = (~op[5])&(~op[4])&(~op[3])&(~op[2])&(~op[1])&(~op[0])&(func[5])&(~func[4])&(~func[3])&(~func[2])&(~func[1])&(func[0]);
    assign subu = (~op[5])&(~op[4])&(~op[3])&(~op[2])&(~op[1])&(~op[0])&(func[5])&(~func[4])&(~func[3])&(~func[2])&(func[1])&(func[0]);
    assign jr = (~op[5])&(~op[4])&(~op[3])&(~op[2])&(~op[1])&(~op[0])&(~func[5])&(~func[4])&(func[3])&(~func[2])&(~func[1])&(~func[0]);
    assign ori = (~op[5])&(~op[4])&(op[3])&(op[2])&(~op[1])&(op[0]);
    assign lw = (op[5])&(~op[4])&(~op[3])&(~op[2])&(op[1])&(op[0]);
    assign sw = (op[5])&(~op[4])&(op[3])&(~op[2])&(op[1])&(op[0]);
    assign beq = (~op[5])&(~op[4])&(~op[3])&(op[2])&(~op[1])&(~op[0]);
    assign lui = (~op[5])&(~op[4])&(op[3])&(op[2])&(op[1])&(op[0]);
    assign j = (~op[5])&(~op[4])&(~op[3])&(~op[2])&(op[1])&(~op[0]);
    assign jal = (~op[5])&(~op[4])&(~op[3])&(~op[2])&(op[1])&(op[0]);
    assign addi = (op==6'b001000);
    assign jalr = (op==6'b000000)&(func==6'b001001);

    assign RegDst={jal,addu|subu|jalr};
    assign RegWrite=addu|subu|ori|lw|lui|jal|addi|jalr;
    assign ALUSrc=addi|ori|lw|sw|lui;
    assign branch={j|jal|jr|jalr,beq|jr|jalr};
    assign isbeq=beq;
    assign MemWrite=sw;
    assign toReg={1'b0,lw};
    assign extsel={1'b0,lw|sw|addi};
    assign ALU ={1'b0,lui,ori,subu|beq};
    assign isWirtePC = jal|jalr;


    assign Tnew = (lw)?2:
                  (jal|jalr|addu|subu|ori|addi|lui)?1:0;
    assign rsTuse = (addi|addu|subu|ori|lui|lw|sw)?1:0;
    assign rtTuse = (ori|lw|lui|j|jal)?3:(sw)?2:
                    (addu|subu)?1:0;



endmodule
