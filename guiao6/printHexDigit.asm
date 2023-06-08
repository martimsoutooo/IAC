	.data
var:	.word 0x12345678
	
	.text
main:
	la $t1, var
	andi $t1,$t1 , 0xf0000000
	srl $t1, $t1, 28
	la $a0, ($t1)
	li $v0, 34
	syscall
	
	la $a0, ' '
	li $v0, 11
	syscall
	
	la $t1, var
	andi $t1,$t1 , 0x0f000000
	srl $t1, $t1, 24
	la $a0, ($t1)
	li $v0, 34
	syscall
	
	la $a0, ' '
	li $v0, 11
	syscall
	
	la $t1, var
	andi $t1,$t1 , 0x00f00000
	srl $t1, $t1, 20
	la $a0, ($t1)
	li $v0, 34
	syscall
	
	la $a0, ' '
	li $v0, 11
	syscall

#caguei

	
	