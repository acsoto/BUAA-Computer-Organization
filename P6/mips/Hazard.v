`timescale 1ns / 1ps

module Hazard(
    input [4:0] regWA_2,
    input [4:0] regWA_3,
    input [4:0] regWA_4,
    input RegWrite_2,
    input RegWrite_3,
    input RegWrite_4,
    input [4:0] rs_1,
    input [4:0] rt_1,
    input [4:0] rs_2,
    input [4:0] rt_2,
    input [4:0] rt_3,


	input [1:0] Tnew_2,
	input [1:0] Tnew_3,
	input [1:0] Tnew_4,
	input [1:0] rsTuse,
	input [1:0] rtTuse,

    output stall,
    output [1:0]forward_RS_1,
    output [1:0]forward_RT_1,
    output [1:0]forward_RS_2,
    output [1:0]forward_RT_2,
    output forward_MEMWD_3
    );

    //stall

	assign stall_RS_2 = (regWA_2!=0) && (regWA_2 == rs_1) && (RegWrite_2) && (rsTuse<Tnew_2);
	assign stall_RT_2 = (regWA_2!=0) && (regWA_2 == rt_1) && (RegWrite_2) && (rtTuse<Tnew_2);
	assign stall_RS_3 = (regWA_3!=0) && (regWA_3 == rs_1) && (RegWrite_3) && (rsTuse<Tnew_3);
	assign stall_RT_3 = (regWA_3!=0) && (regWA_3 == rt_1) && (RegWrite_3) && (rtTuse<Tnew_3);

	assign stall=stall_RS_2||stall_RT_2||stall_RS_3||stall_RT_3; 


    //forward

	 assign forward_RS_1=//(regWA_2!=0) && (regWA_2 == rs_1) && (RegWrite_2) && (Tnew_2==0)? 3 :
	                   (regWA_3!=0) && (regWA_3 == rs_1) && (RegWrite_3)  ? 2 :
	                   (regWA_4!=0) && (regWA_4 == rs_1) && (RegWrite_4)  ? 1 : 0;
	 assign forward_RT_1=//(regWA_2!=0) && (regWA_2 == rt_1) && (RegWrite_2)  && (Tnew_2==0)? 3 :
	                   (regWA_3!=0) && (regWA_3 == rt_1) && (RegWrite_3)  ? 2 :
	                   (regWA_4!=0) && (regWA_4 == rt_1) && (RegWrite_4)  ? 1 : 0;

	 assign forward_RS_2=(regWA_3!=0) && (regWA_3 == rs_2) && (RegWrite_3)  ? 2 :
	                   (regWA_4!=0) && (regWA_4 == rs_2) && (RegWrite_4) ? 1 : 0;
	 assign forward_RT_2=(regWA_3!=0) && (regWA_3 == rt_2) && (RegWrite_3)  ? 2 :
	                   (regWA_4!=0) && (regWA_4 == rt_2) && (RegWrite_4)  ? 1 : 0;
	 
	 assign forward_MEMWD_3 = (regWA_4!=0) && (regWA_4 == rt_3) && (RegWrite_4)  ;


endmodule
