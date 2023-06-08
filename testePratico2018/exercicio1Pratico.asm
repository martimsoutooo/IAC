	.data
nums:	.word -2,3,-19,4,8,126,-131,17
msg:	.asciiz "O número de impares é: "

	.text
main:
	li $t0, 0
	li $t1, 0
	li $t2, 8
	
for:
	bge $t0,$t2, print
	lb $t3, nums($t0)
	
	andi $t4, $t3, 1
	
	addi $t0, $t0, 1
	
	beqz $t4, increment
	
	j for	
	
increment:
	addi $t1, $t1, 1
	j for

print:
	la $a0, msg
	li $v0, 4
	syscall
	
	la $a0, ($t1)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	