.text
	li	$v0,5
	syscall			# ����һ����������������浽$v0��
	move	$s0,$v0		# ��ֵ��$s0=$v0
	li	$s1,0		# $s1 ���ڴ洢�ۼӵ�ֵ��$s1=0
	li	$t0,1		# $t0��ѭ������
loop:
	bgt	$t0,$s0,loop_end	# ��������һ����չָ��bgt,��$t0>$s0��ʱ����ת��loop_end
	add	$s1,$s1,$t0	# $s1=$s1+$t0
	addi	$t0,$t0,1	# $t0=$t0+1
	j	loop		# ��������ת��loop��ǩ
loop_end:
	move	$a0,$s1		# ��ֵ��$a0=$s1
	li	$v0,1		# $v0=1����syscall�л����$a0��ֵ
	syscall			
	li	$v0,10		# $v0=10
	syscall			# ��������