	# input number
	li	a7 5
	ecall
	# save to another reg
	mv	t0 a0
	ecall
	add	a0 t0 a0
	# print
	li	a7 1
	ecall
	# stop syscall
	li	a7 10
	ecall