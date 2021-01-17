`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:06 10/29/2020 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	 
	 reg [15:0] cnt;
	 reg mistake;
	 reg [255:0] buff;
	 initial begin
		cnt<=0;
		mistake<=0;
		buff<="        ";
	 end
	 assign result = (cnt==256'b0)&&(!mistake);
	 
	 always @(posedge clk,posedge reset)begin
		if(reset)begin
			cnt<=0;
			mistake<=0;
			buff<="        ";
		end
		else begin
			buff={buff[247:0],in|8'h20};
			if(mistake);
			else begin
				if(buff[47:0]==" begin")cnt<=cnt+1;
				else if(buff[47:8]=="begin"&&buff[7:0]!=" ")cnt<=cnt-1;
				else if(buff[31:0]==" end")cnt<=cnt-1;
				else if(buff[31:0]=="end ")begin
						if($signed($signed(cnt)<$signed(0)))mistake<=1;
						else;
				end
				else if(buff[31:8]=="end"&&buff[7:0]!=" ")cnt<=cnt+1;
			end
		end
	 end	


endmodule
