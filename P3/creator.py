import os
import random
import re

# 随机构造指令部分，手写的话可以把底下部分注释掉，准备好in.asm就可以了
with open("in.asm","w") as file:
    for i in range(2):
        x=random.randint(0,31)
        y=random.randint(0,31)
        z=random.randint(0,31)
        file.write("addu $%d,$%d,$%d\n"%(x,y,z))
    for i in range(2):
        x=random.randint(0,31)
        y=random.randint(0,31)
        z=random.randint(0,31)
        file.write("subu $%d,$%d,$%d\n"%(x,y,z))
    for i in range(2):
        x=random.randint(0,31)
        num=random.randint(0,10000)
        file.write("lui $%d,%d\n"%(x,num))
    for i in range(2):
        x=random.randint(0,31)
        y=random.randint(0,31)
        num=random.randint(0,10000)
        file.write("ori $%d,$%d,%d\n"%(x,y,num))
    for i in range(2):
        x=random.randint(0,31)
        y=random.randint(0,31)
        num=random.randint(0,100)
        file.write("lw $%d,%d($%d)\n"%(x,4*num,y))
    for i in range(2):
        x=random.randint(0,31)
        y=random.randint(0,31)
        num=random.randint(0,100)
        file.write("sw $%d,%d($%d)\n"%(x,4*num,y))
    # for i in range(2):
    #     x=random.randint(0,31)
    #     y=random.randint(0,31)
    #     num=random.randint(0,100)
    #     file.write("beq $%d,$%d,%d\n"%(x,y,4*num))
# 生成并载入
os.system("java -jar mars4_5.jar in.asm nc mc CompactTextAtZero a dump .text HexText rom.txt")
with open("rom.txt","r") as file:
    content=file.read()
with open("CPU.circ","r") as file:
    circmy=file.read()
circmy=re.sub(r'addr/data: 5 32([\s\S]*)</a>',"addr/data: 5 32\n"+content+"</a>",circmy)
with open("CPU.circ","w") as file:
    circmy=file.write(circmy)
# 以下部分直接fc对比，不建议使用，而且你需要一个好心的同学提供电路给你对拍
# os.system("java -jar logisim.jar test.circ -tty table >my.txt")
# os.system("fc my.txt ans.txt")
