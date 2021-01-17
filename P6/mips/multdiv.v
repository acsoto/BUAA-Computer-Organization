`timescale 1ns / 1ps

module multdiv(
    input clk,
    input reset,
    input [3:0] OP,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] HI,
    output reg [31:0] LO,
    output reg busy
    );


    reg [3:0] cycle;
    reg [63:0] temp;

    //mdOP = mult?1: multu?2: div?3: divu?4: mthi?5: mtlo?6: mfhi?7: mflo?8 :0;
    initial begin
        busy<=0;
        HI<=0;
        LO<=0;
        cycle<=0;
        temp<=0;
    end
    always @(posedge clk ) begin
        if (reset) begin
            busy<=0;
            HI<=0;
            LO<=0;
            cycle<=0;
            temp<=0;
        end
        else begin
            if(cycle)begin
                cycle=cycle-1;
                if(cycle==0)begin
                    {HI,LO}<=temp;
                    busy<=0;
                end
            end
            else begin
                    case(OP)
                    1: begin //mult
                        temp<=$signed(A)*$signed(B);
                        cycle<=5;
                        busy<=1;
                    end
                    2: begin//multu
                        temp<=A*B;
                        cycle<=5;
                        busy<=1;                    
								end
                    3: begin//div
                        temp<={$signed(A)%$signed(B),$signed(A)/$signed(B)};
                        cycle<=10;
                        busy<=1;
                    end
                    4: begin//divu
                        temp<={A%B,A/B};
                        cycle<=10;
                        busy<=1;
                    end
                    5: begin//mthi
                        HI<=A;
                    end

                    6: begin//mtlo
                        LO<=A;
                    end
                endcase
            end
        end
    end


endmodule
