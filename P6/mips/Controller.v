`timescale 1ns / 1ps

module Controller(
    input [31:0] ins,
    output  [1:0] RegDst,
    output  RegWrite,
    output  ALUSrc1,
    output  ALUSrc2,
    output  [1:0]jump,
    output  beq,
    output  bne,
    output  bgez,
    output  bgtz,
    output  blez,
    output  bltz,
    output  sw,
    output  sh,
    output  sb,
    output  [2:0]LoadEXTOP,
    output  [3:0]mdOP,
    output  MemWrite,
    output  isWritePC,
    output  [1:0]toReg,
    output  [1:0]extsel,
    output  [1:0]BE,
    output  [3:0] ALU,
    output  [1:0] rsTuse,
    output  [1:0] rtTuse,
    output  [1:0] Tnew
    );

	 wire [5:0] op = ins[31:26];
	 wire [5:0] func = ins[5:0];
	 wire [4:0] rt = ins[20:16];


	wire add   = (op==6'b000000)&(func==6'b100000);
	wire addu  = (op==6'b000000)&(func==6'b100001);
	wire sub   = (op==6'b000000)&(func==6'b100010);
	wire subu  = (op==6'b000000)&(func==6'b100011);
	wire sll   = (op==6'b000000)&(func==6'b000000);
	wire srl   = (op==6'b000000)&(func==6'b000010);
	wire sra   = (op==6'b000000)&(func==6'b000011);
	wire sllv  = (op==6'b000000)&(func==6'b000100);
	wire srlv  = (op==6'b000000)&(func==6'b000110);
	wire srav  = (op==6'b000000)&(func==6'b000111);
	wire and0  = (op==6'b000000)&(func==6'b100100);
	wire or0   = (op==6'b000000)&(func==6'b100101);
	wire xor0  = (op==6'b000000)&(func==6'b100110);
	wire nor0  = (op==6'b000000)&(func==6'b100111);
	wire slt   = (op==6'b000000)&(func==6'b101010);
	wire sltu  = (op==6'b000000)&(func==6'b101011);
	
	wire addi  = (op==6'b001000);
	wire addiu = (op==6'b001001);
	wire andi  = (op==6'b001100);
	wire ori   = (op==6'b001101);
	wire xori  = (op==6'b001110);
	wire lui   = (op==6'b001111);
	wire slti  = (op==6'b001010);
	wire sltiu = (op==6'b001011);
	
	assign beq = (op==6'b000100);
	assign bne = (op==6'b000101);
	assign blez= (op==6'b000110);
	assign bgtz= (op==6'b000111);
	assign bltz= (op==6'b000001)&(rt==5'b00000);
	assign bgez= (op==6'b000001)&(rt==5'b00001);
	wire j     = (op==6'b000010);
	wire jal   = (op==6'b000011);
	wire jalr  = (op==6'b000000)&(func==6'b001001);
	wire jr    = (op==6'b000000)&(func==6'b001000);
	
	wire lb    = (op==6'b100000);
	wire lbu   = (op==6'b100100);
	wire lh    = (op==6'b100001);
	wire lhu   = (op==6'b100101);
	wire lw    = (op==6'b100011);
	assign sb  = (op==6'b101000);
	assign sh  = (op==6'b101001);
	assign sw  = (op==6'b101011);
	
	wire mult  = (op==6'b000000)&(func==6'b011000);
	wire multu = (op==6'b000000)&(func==6'b011001);
	wire div   = (op==6'b000000)&(func==6'b011010);
	wire divu  = (op==6'b000000)&(func==6'b011011);
	wire mfhi= (op==6'b000000)&(func==6'b010000);
	wire mflo= (op==6'b000000)&(func==6'b010010);
	wire mthi  = (op==6'b000000)&(func==6'b010001);
	wire mtlo  = (op==6'b000000)&(func==6'b010011);
	//
    
	 wire R_ins = add|addu|sub|subu|slt|sltu|sll|srl|sra|sllv|srlv|srav|and0|or0|xor0|nor0;
	 wire I_ins = addi|addiu|andi|ori|xori|lui|slti|sltiu;
	 wire save_ins = sw|sh|sb;
	 wire load_ins = lw|lh|lhu|lb|lbu;
	 wire ls_ins = load_ins|save_ins;
	 wire B_ins = beq|bne|blez|bgtz|bltz|bgez;
	 wire Blg_ins = blez|bgtz|bltz|bgez;
	 wire md = mult|multu|div|divu;
	 wire mt = mthi|mtlo;
	 wire mf = mfhi|mflo;


	 

    assign RegDst={jal,R_ins|jalr|mf};
    assign RegWrite=R_ins|I_ins|load_ins|jal|jalr|mf;
    assign ALUSrc1= sll|srl|sra ;
    assign ALUSrc2= I_ins|ls_ins ;
    assign jump={j|jal|jr|jalr,jr|jalr};
    assign MemWrite=save_ins;
    assign toReg={1'b0,load_ins};
    assign extsel={1'b0,ls_ins|addi|addiu|slti|sltiu};
	 assign isWritePC = jal|jalr;
	 assign LoadEXTOP = lh?1: lhu?2: lb?3: lbu?4: 0;
	 //lh lhu lb lbu 
	 assign mdOP = mult?1: multu?2: div?3: divu?4: mthi?5: mtlo?6: mfhi?7: mflo?8 :0;
	 //mdOP = mult?1: multu?2: div?3: divu?4: mthi?5: mtlo?6: mfhi?7: mflo?8 :0;
	 
	 //+ - | & ^ ~| <<16 << >> >>> <u < ?
    assign ALU =     (ls_ins|add|addu|addi|addiu)?		4'd0://+
							(sub|subu)?								4'd1:  //-
							(or0|ori)?							   4'd2:  //|
							(and0|andi)?							4'd3:  //&
							(xor0|xori)?							4'd4:  //^
							(nor0)?									4'd5:  //~|
							(lui)?									4'd6:  //<<16
							(sll|sllv)?								4'd7:  //<<
							(srl|srlv)?								4'd8:  //>>
							(sra|srav)?								4'd9:  //>>>
							(sltu|sltiu)?							4'd10: //<u
							(slt|slti)?								4'd11: //<
																		4'd12; //null


    assign Tnew =   (load_ins)?2:
                    (R_ins|I_ins|jal|jalr|mf)?1:0;
    assign rsTuse = (B_ins|jr|jalr)?0:
						  (R_ins|I_ins|ls_ins|md|mt)?1:3;
    assign rtTuse = (beq|bne)?0:
						  (R_ins|md)?1:
						  (save_ins)?2:3;



endmodule
