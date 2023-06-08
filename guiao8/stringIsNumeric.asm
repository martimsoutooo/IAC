	.data
prompt1:.asciiz "Introduza uma string: "
result:	.asciiz "O número de carateres numéricos: "
str:	.space	40

	.text
main:
	la $a0, prompt1
	li $v0, 4
	syscall
	
	la $a0, str
	la $a1, 40
	li $v0, 8
	syscall
	
	li $t0, 0
	
for:
	lb $t2, str($t1)
	beqz $t2, print
	
	blt $t2, '0', nextStep
	bgt $t2, '9', nextStep
	
	addi $t0, $t0, 1

nextStep:
	addi $t1, $t1, 1
	j for
	
print:
	la $a0, result
	li $v0, 4
	syscall
	
	la $a0, ($t0)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
	