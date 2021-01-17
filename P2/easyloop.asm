.text
	li	$v0,5
	syscall			# 输入一个整数，输入的数存到$v0中
	move	$s0,$v0		# 赋值，$s0=$v0
	li	$s1,0		# $s1 用于存储累加的值，$s1=0
	li	$t0,1		# $t0是循环变量
loop:
	bgt	$t0,$s0,loop_end	# 这里用了一个扩展指令bgt,当$t0>$s0的时候跳转到loop_end
	add	$s1,$s1,$t0	# $s1=$s1+$t0
	addi	$t0,$t0,1	# $t0=$t0+1
	j	loop		# 无条件跳转到loop标签
loop_end:
	move	$a0,$s1		# 赋值，$a0=$s1
	li	$v0,1		# $v0=1，在syscall中会输出$a0的值
	syscall			
	li	$v0,10		# $v0=10
	syscall			# 结束程序