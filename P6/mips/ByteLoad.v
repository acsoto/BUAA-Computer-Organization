`timescale 1ns / 1ps

module ByteLoad(
    input [31:0] ins,
    input [31:0] RD,
    output [31:0] RD_new,
    input [1:0] addr
    );
	 
	 wire [2:0] LoadEXTOP;
	 
    Controller ctr_ByteLoad(
		  .ins(ins),
		  .LoadEXTOP(LoadEXTOP)
        );
		  

		  
	wire [15:0] Hdata=(addr[1]==0)?
							RD[15:0]:
							RD[31:16];
							
	wire [7:0]  Bdata=(addr==2'b00)?
							RD[7:0]:
							(addr==2'b01)?
							RD[15:8]:
							(addr==2'b10)?
							RD[23:16]:
							RD[31:24];							
							
	//lh lhu lb lbu 
	assign RD_new = (LoadEXTOP==1)?({{16{Hdata[15]}},Hdata}):
							(LoadEXTOP==2)?({{16{1'b0}},Hdata}):
							(LoadEXTOP==3)?({{24{Bdata[7]}},Bdata}):
							(LoadEXTOP==4)?({{24{1'b0}},Bdata}):RD;


endmodule
