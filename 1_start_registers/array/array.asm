.data
array:	.space	64
end_of_array:
.text
	la	t0, array
	la	t1, end_of_array
	li	t2, 1
loop_write:	
	sw	t2, (t0)
	addi	t2, t2, 1
	addi	t0, t0, 4
	bltu	t0, t1, loop_write
	
	la t0, array
loop_read:
	bgeu t0, t1, end
	li a7, 1
	lw a0, (t0)
	ecall
	li a7, 11
	li a0, 10
	ecall
	addi t0, t0, 4
	b loop_read	
end:
	li	a7, 10
	ecall