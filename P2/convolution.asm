.macro done
	li $v0,10
	syscall
.end_macro
.macro readint
	li $v0,5
	syscall
.end_macro
.macro caladdr(%addr,%row,%column,%rank)
	multu %row,%rank
	mflo %addr
	addu %addr,%addr,%column
	sll %addr,%addr,2
.end_macro
.macro printn(%n)
	move $a0,%n
	li $v0,1
	syscall
.end_macro
.data
matrix: .space 600
core: .space 600
space: .asciiz  " "
enter: .asciiz "\n"

.text
#s1,s2  s3,s4  row and column
#t1,t2  t3,t4  row and column counter
readint
move $s1,$v0
readint
move $s2,$v0
readint
move $s3,$v0
readint
move $s4,$v0
#initialize t1t2t3t4
li $t1,0
li $t2,0
li $t3,0
li $t4,0
#t5: addr
read_loop1:
	caladdr($t5,$t1,$t2,$s2)
	readint
	sw $v0,matrix($t5)
	addi $t2,$t2,1
	bne $t2,$s2,read_loop1
	addi $t1,$t1,1
	li $t2,0
	bne $t1,$s1,read_loop1


read_loop2:
	caladdr($t5,$t3,$t4,$s4)
	readint
	sw $v0,core($t5)
	addi $t4,$t4,1
	bne $t4,$s4,read_loop2
	addi $t3,$t3,1
	li $t4,0
	bne $t3,$s3,read_loop2

li $t1,0
li $t2,0
li $t3,0
li $t4,0
#s5 s6 answer row and column
sub $s5,$s1,$s3
addi $s5,$s5,1
sub $s6,$s2,$s4
addi $s6,$s6,1
#t9: counter
cal_loop:
	##external loop
	li $t9,0
	li $t3,0
	li $t4,0
	##internal loop
	in_loop:
		add $s0,$t1,$t3
		add $s7,$t2,$t4
		caladdr($t5,$s0,$s7,$s2)
		lw $t7,matrix($t5)
		caladdr($t5,$t3,$t4,$s4)
		lw $t8,core($t5)
		mult $t7,$t8
		mflo $t0
		add $t9,$t9,$t0
		addi $t4,$t4,1
		bne $t4,$s4,in_loop
		addi $t3,$t3,1
		li $t4,0
		bne $t3,$s3,in_loop
		printn($t9)
	##external loop
	li $v0,4
	la $a0,space
	syscall
	addi $t2,$t2,1
	bne $s6,$t2,cal_loop
	li $v0,4
	la $a0,enter
	syscall
	li $t2,0
	addi $t1,$t1,1
	bne $s5,$t1,cal_loop
done
	
	
	
	
