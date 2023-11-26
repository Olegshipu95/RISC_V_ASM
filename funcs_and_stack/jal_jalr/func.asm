.data
var:	.asciz "Hello, world\n"

.text
	jal		print
# we can use jalr only with reg
	la	s1	print
	jalr	s1 
	li 	a7	10
	ecall
print:
	la	a0	var
	li	a7	4
	ecall
# jalr x0, x1, 0
	ret