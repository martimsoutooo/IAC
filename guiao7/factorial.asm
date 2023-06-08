	.data
prompt1:.asciiz "Introduza um numero: "
result: .asciiz "O fatorial do numero inserido é: "

	.text
main:
	la $a0, prompt1
	li $v0,4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0 #$t0=n=i
	
	li $t2, 1 #$t2=f
	
for: 
	slt $t3, $0, $t0      
	beq $t3, $0, print 	
	mulo $t2, $t2, $t0
	subi $t0, $t0, 1 #i--
	j for

print:
	la $a0, result
	li $v0, 4
	syscall
	
	la $a0, ($t2)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	

	
	
	
	
	
	