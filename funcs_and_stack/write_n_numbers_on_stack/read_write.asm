.text
	li 	a7, 5
	ecall
	addi	s1, a0, 0
	jal read_n
	addi a0, s1, 0
	jal write_n
	li	a7, 10
	ecall
read_n:
	addi	a2, a0, 0
	#counter
	li	a1, 0
loop_read:
	bge	a1, a2, end
	addi	sp, sp, -4
	li	a7, 5
	ecall
	sw	a0, (sp)
	addi	a1, a1, 1
	j loop_read
	

write_n:
	addi	a2, a0, 0
	#counter
	li	a1, 0
loop_write:
	bge	a1, a2, end
	lw	a0, (sp)
	addi	sp, sp, 4
	li	a7, 1
	ecall
	addi	a1, a1, 1
	j loop_write
	
	
end:
	ret	