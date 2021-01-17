.macro done
	li $v0, 10
	syscall
.end_macro
.macro readint
	li $v0, 5
	syscall
.end_macro
.data
str: .space 100

.text

readint
move $s0,$v0
move $t0,$0

loop:
	sll $t1,$t0,2
	li $v0, 12
	syscall
	sw $v0,str($t1)
	addi $t0,$t0,1
	bne $t0,$s0,loop

#if n=1 done
li $t5,1
beq $s0,$t5,true

srl $s0,$s0,1  #s0/=2
move $t2,$0

check:
	addi $t0,$t0,-1
	sll $t1,$t0,2
	lw $s1,str($t1)
	
	sll $t3,$t2,2
	lw $s2,str($t3)
	addi $t2,$t2,1
	bne $s1,$s2,false
	beq $t2,$s0,true
	j check
true:
li $a0,1
li $v0,1
syscall
done
false:
li $a0,0
li $v0,1
syscall
done