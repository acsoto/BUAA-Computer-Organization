.macro done
	li $v0, 10
	syscall
.end_macro

.macro caladdr(%dst, %row, %column, %rank)
	multu %row,%rank
	mflo %dst
	addu %dst,%dst,%column
	sll %dst,%dst,2
.end_macro


.macro readint
	li $v0, 5
	syscall
.end_macro

.data 
matrix1: .space 400
matrix2: .space 400
space: .asciiz " "
enter: .asciiz "\n"

.text
#s0:n 
#s1:row1 s2:column1
#s3:addr

readint
move $s0,$v0

move $s1,$0
move $s2,$0

loop1:
	caladdr($s3,$s1,$s2,$s0)
	readint
	sw $v0,matrix1($s3)
	addi $s2,$s2,1
	bne $s2,$s0,loop1
	###
	move $s2,$0
	addi $s1,$s1,1
	bne $s1,$s0,loop1
	
move $s1,$0
move $s2,$0

loop2:
	caladdr($s3,$s1,$s2,$s0)
	readint
	sw $v0,matrix2($s3)
	addi $s2,$s2,1
	bne $s2,$s0,loop2
	###
	move $s2,$0
	addi $s1,$s1,1
	bne $s1,$s0,loop2

move $s1,$0
move $s2,$0
move $t0,$0 #count
move $t1,$0 #temp
move $t2,$0 #ansc
move $t3,$0 #lw1
move $t4,$0 #lw2

loopx:
	caladdr($s3,$s1,$t0,$s0)
	lw $t3,matrix1($s3)
	caladdr($s3,$t0,$s2,$s0)
	lw $t4,matrix2($s3)
	mult $t3,$t4
	mflo $t1
	add $t2,$t2,$t1
	addi $t0,$t0,1
	bne $t0,$s0,loopx
	###
	move $a0,$t2
	li $v0,1
	syscall
	li $v0,4
	la $a0,space
	syscall
	move $t0,$0 #count
	move $t1,$0 #temp
	move $t2,$0 #ansc
	
	addi $s2,$s2,1
	bne $s2,$s0,loopx
	###
	li $v0,4
	la $a0,enter
	syscall
	move $s2,$0
	addi $s1,$s1,1
	bne $s1,$s0,loopx

done

