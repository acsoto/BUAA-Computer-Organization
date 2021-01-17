.macro done
	li $v0,10
	syscall
.end_macro
.macro readint
	li $v0,5
	syscall
.end_macro
.macro printn(%n)
	move $a0,%n
	li $v0,1
	syscall
.end_macro
.macro printspace()
	la $a0,space
	li $v0,4
	syscall
.end_macro
.macro printenter()
	la $a0,enter
	li $v0,4
	syscall
.end_macro
.data
array:  .space 36
symbol: .space 36
space: .asciiz  " "
enter: .asciiz "\n"
.text
main:
readint
move $s0,$v0
li $a0,0
jal perm
done

perm:

	sub $t5,$a0,$s0
	bltz $t5,next
	##end
	li $t0,0
	loopx:
		sll $t1,$t0,2
		lw $t2,array($t1)
		printn($t2)
		printspace
		addi $t0,$t0,1
		bne $t0,$s0,loopx
	printenter
	jr $ra


	next:
	li $t0,0
	loop:
		#t2:tmp t1:address t0:i t3:i+1 t4:arrayadress
		sll $t1,$t0,2
		lw $t2,symbol($t1)
		bne $t2,0,ifnot
		sll $t4,$a0,2
		addi $t3,$t0,1
		sw $t3,array($t4)
		li $t2,1
		sw $t2,symbol($t1)
		##
		sw $a0,0($sp)
		subi $sp,$sp,4
		sw $ra,0($sp)
		subi $sp,$sp,4
		sw $t0,0($sp)
		subi $sp,$sp,4
		addi $a0,$a0,1
		jal perm
		##
		addi $sp,$sp,4
		lw $t0,0($sp)
		addi $sp,$sp,4
		lw $ra,0($sp)
		addi $sp,$sp,4
		lw $a0,0($sp)
		##
		sll $t1,$t0,2
		li $t2,0
		sw $t2,symbol($t1)
		ifnot:
		addi $t0,$t0,1
		bne $t0,$s0,loop

	jr $ra
	
