
.text
	li a7, 5
	ecall
	mv t2, a0
	li t3, 10
	li t1, 0
loop:
	beqz t2, end
	rem a3, t2, t3
	add t1, t1, a3
	div t2, t2, t3
	j loop
end:
	li a0, 0
	blt t1, a0, invert
	li a7, 1
	mv a0, t1
	ecall
	li a7, 10
	ecall

invert:
	neg t1, t1
	j end