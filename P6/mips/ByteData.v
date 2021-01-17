`timescale 1ns / 1ps

module ByteData(
    input [31:0] ins,
    input [31:0] data_old,
    input [31:0] WD,
    output [31:0] data_new,
    input [1:0] addr
    );
	 
	 wire sw,sh,sb;
	 
    Controller ctr_ByteData(
        .ins(ins),
        .sw(sw),
        .sh(sh),
        .sb(sb)
        );
		  
	wire [31:0] Hdata=(addr[1]==0)?
							{data_old[31:16],WD[15:0]}:
							{WD[15:0],data_old[15:0]};
							
	wire [31:0] Bdata=(addr==2'b00)?
							{data_old[31:8],WD[7:0]}:
							(addr==2'b01)?
							{data_old[31:16],WD[7:0],data_old[7:0]}:
							(addr==2'b10)?
							{data_old[31:24],WD[7:0],data_old[15:0]}:
							{WD[7:0],data_old[23:0]};							
							
	assign data_new = (sw)?WD:
							(sh)?Hdata:
							(sb)?Bdata:0;
	 


endmodule
