import os
import random
import re

with open("in.asm","w") as file:
    for i in range(16):
        x=random.randint(0,31)
        y=random.randint(0,31)
        num=random.randint(0,10000)
        file.write("lui $%d,%d\n"%(i,num))
            num=random.randint(0,10000)
            file.write("ori $%d,$%d,%d\n"%(x,x,num))
    for i in range(16,31):
        x=random.randint(0,31)
        y=random.randint(0,31)
        z=random.randint(0,31)
        file.write("addu $%d,$%d,$%d\n"%(x,y,z))
