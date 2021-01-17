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
    output  [3:0] ALU
    );
    wire addu, subu, ori, lw, sw, beq, lui, jar, jr, j;

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

    assign RegDst={jal,addu|subu};
    assign RegWrite=addu|subu|ori|lw|lui|jal;
    assign ALUSrc=ori|lw|sw|lui;
    assign branch={j|jal|jr,beq|jr};
    assign isbeq=beq;
    assign MemWrite=sw;
    assign toReg={jal,lw};
    assign extsel={1'b0,lw|sw};
    assign ALU ={1'b0,lui,ori,subu|beq};


    // always @(*) begin
    //     case(op)
    //         6'b000000:
    //         //addu,subu
    //         begin
    //             RegDst<=2'b01;
    //             RegWrite<=1;
    //             ALUSrc<=0;
    //             MemWrite<=0;
    //             toReg<=0;
    //             beq<=0;
    //             extsel<=0;
    //             case (func)
    //                 6'b100001://addu
    //                 begin
    //                     ALU <= 0;
    //                     branch<=2'b00;
    //                 end
    //                 6'b100011://subu
    //                 begin
    //                     ALU <= 1;
    //                     branch<=2'b00;
    //                 end
    //                 6'b001000://jr
    //                 begin
    //                     ALU <= 0;
    //                     branch<=2'b11;
    //                 end
    //             endcase
    //         end
    //         6'b001101:
    //         //ori
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=1;
    //             ALUSrc<=1;
    //             branch<=2'b00;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=0;
    //             extsel<=0;
    //             ALU <= 2;
    //         end
    //         6'b100011:
    //         //lw
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=1;
    //             ALUSrc<=1;
    //             branch<=2'b00;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=1;
    //             extsel<=1;
    //             ALU <= 0;
    //         end
    //         6'b101011:
    //         //sw
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=0;
    //             ALUSrc<=1;
    //             branch<=2'b00;
    //             beq<=0;
    //             MemWrite<=1;
    //             toReg<=0;
    //             extsel<=1;
    //             ALU <= 0;
    //         end
    //         6'b000100:
    //         //beq
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=0;
    //             ALUSrc<=0;
    //             branch<=2'b01;
    //             beq<=1;
    //             MemWrite<=0;
    //             toReg<=0;
    //             extsel<=0;
    //             ALU <= 1;
    //         end
    //         6'b001111:
    //         //lui
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=1;
    //             ALUSrc<=1;
    //             branch<=2'b00;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=0;
    //             extsel<=0;
    //             ALU <= 4;
    //         end
    //         6'b000010:
    //         //j
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=1;
    //             ALUSrc<=0;
    //             branch<=2'b10;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=0;
    //             extsel<=0;
    //             ALU <= 0;
    //         end
    //         6'b000011:
    //         //jal
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=1;
    //             ALUSrc<=1;
    //             branch<=2'b10;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=2'b10;
    //             extsel<=0;
    //             ALU <= 0;
    //         end
            
    //         default:
    //         //other status including nop
    //         begin
    //             RegDst<=2'b00;
    //             RegWrite<=0;
    //             ALUSrc<=0;
    //             branch<=2'b00;
    //             beq<=0;
    //             MemWrite<=0;
    //             toReg<=0;
    //             extsel<=0;
    //             ALU <= 0;
    //         end
            
    //     endcase
    // end


endmodule
