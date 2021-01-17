`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:57 10/29/2020 
// Design Name: 
// Module Name:    string 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );

	 parameter State1 = 4'b0001,
				  State2 = 4'b0010,
				  State3 = 4'b0100,
				  State4 = 4'b1000;
	 
	 wire flag;
	 assign flag=((in>="0"&&in<="9")?1:0);
	 reg [3:0] S;
	 assign out=((S==State2)?1:0);
	 
	 initial begin
		S<=State1;
	 end

	always @(posedge clk,posedge clr)begin
		if(clr)begin
			S=State1;
		end
		else begin
			case(S)
				State1:
					begin
						if(flag==1)S<=State2;
						else S<=State4;
					end
				State2:
					begin
						if(flag==1)S<=State4;
						else S<=State3;
					end
				State3:
					begin
						if(flag==1)S<=State2;
						else S<=State4;
					end
				State4:;
				default:;
			endcase
		end
	end
endmodule
