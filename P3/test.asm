
ori $s1,$s1,11
ori $s2,$s2,5
addu $s3,$s1,$s2
j this2
this1:
nop
this2:
nop
subu $s4,$s1,$s2
lui $s5,8
sw $s3,0($0)
beq $t1,$t2,that
lw $s6,4($0)
lw $s3,4($0)
that:
lw $s6,4($0)
beq $s1,$s2,this1

