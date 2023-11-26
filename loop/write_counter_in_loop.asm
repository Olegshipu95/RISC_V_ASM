	li	s0	15	# loop counter top
	li	s1	1 	# init loop counter
loop:	
	bge	s1 s0 final 	# if s1 greater or equal s2 goto final
	li	a7 1		# number syscall(write int)
	mv	a0 s1		
	ecall
	li	a7 11		# print char
	li	a0 10		# new string
	ecall
	addi	s1 s1 1		# inc s1
	j	loop		# jump to loop
final:	
	li	a7 10		# stop syscall
	ecall