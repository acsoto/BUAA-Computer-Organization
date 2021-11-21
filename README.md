# BUAA-Computer-Organization
留下自己祭祖的回忆，供参考

##### P0 logisim初步学习

##### P1 verilog初步学习

##### P2 mips汇编语言初步学习

##### P3 用logisim搭建单周期CPU

[P3文档](P3/CPU设计文档.pdf)

本CPU为Logisim实现的单周期MIPS - CPU，处理器为32位处理器，支持的指令集包含{ addu, subu, ori, lw, sw, beq, lui, nop,j}。为了实现这些功能，CPU主要包含了Controller（控制器）、IFU（取指令单元）、GRF（通用寄存器组，也称为寄存器文件、寄存器堆）、ALU（算术逻辑单元）、DM（数据存储器）、 EXT（位扩展器）等基本部件，这些模块分成3级。

##### P4 用verilog搭建单周期CPU

[P4文档](P4/CPU设计文档.pdf)

本CPU为Verilog实现的单周期MIPS - CPU，处理器为32位处理器，支持的指令集包含{ addu, subu, ori, lw, sw, beq, lui, jal, jr,,j nop}。为了实现这些功能，CPU主要包含了Controller（控制器）、IFU（取指令单元）、GRF（通用寄存器组，也称为寄存器文件、寄存器堆）、ALU（算术逻辑单元）、DM（数据存储器）、 EXT（位扩展器）等基本部件。

##### P5 用verilog搭建多周期多周期流水线CPU

[P5文档](P5/P5-Verilog流水线实验报告.md)

本CPU为Verilog实现的流水线MIPS - CPU，支持的指令集包含{ addu, subu, ori, lw, sw, beq, lui, jal, jr, j, nop}。为了实现这些功能，CPU主要包含了IF，ID，EX，MEM，WB五级流水线及期间的寄存器，GRF（通用寄存器组，也称为寄存器文件、寄存器堆）、ALU（算术逻辑单元）、DM（数据存储器）、 EXT（位扩展器）等基本部件。这些模块按照mips-五级流水-部件的顶层设计逐级展开。

##### P6 用verilog搭建多周期多周期流水线CPU（新增指令）

[P6文档](P6/P6-Verilog流水线实验报告.md)

本CPU为Verilog实现的流水线MIPS - CPU，支持的指令集包含{LB、LBU、LH、LHU、LW、SB、SH、SW、ADD、ADDU、
SUB、 SUBU、 MULT、 MULTU、 DIV、 DIVU、 SLL、 SRL、 SRA、 SLLV、
SRLV、SRAV、AND、OR、XOR、NOR、ADDI、ADDIU、ANDI、ORI、
XORI、LUI、SLT、SLTI、SLTIU、SLTU、BEQ、BNE、BLEZ、BGTZ、
BLTZ、BGEZ、J、JAL、JALR、JR、MFHI、MFLO、MTHI、MTLO}。为了实现这些功能，CPU主要包含了IF，ID，EX，MEM，WB五级流水线及期间的寄存器，GRF（通用寄存器组，也称为寄存器文件、寄存器堆）、ALU（算术逻辑单元）、DM（数据存储器）、 EXT（位扩展器）等基本部件。这些模块按照mips-五级流水-部件的顶层设计逐级展开。

