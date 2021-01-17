`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:03 10/28/2020 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
    );


initial begin
	Output=0;
	Overflow=0;
end

always @(posedge Clk)begin
	if(Reset==1)begin
		Output<=0;
		Overflow<=0;
	end
	else begin
		if(En==0);
		else begin
			if(Output==3'b000)begin
				Output<=3'b001;
			end
			if(Output==3'b001)begin
				Output<=3'b011;
			end
			if(Output==3'b011)begin
				Output<=3'b010;
			end
			if(Output==3'b010)begin
				Output<=3'b110;
			end
			if(Output==3'b110)begin
				Output<=3'b111;
			end
			if(Output==3'b111)begin
				Output<=3'b101;
			end
			if(Output==3'b101)begin
				Output<=3'b100;
			end
			if(Output==3'b100)begin
				Output<=3'b000;
				Overflow<=1;
			end
		end
	end
end

endmodule
