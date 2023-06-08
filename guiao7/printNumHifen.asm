	.data
prompt1:.asciiz "Introduza um número\n"

	.text
main:
	la $a0, prompt1
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 0
	
for:	
	slt $t2, $t1,$t0 
	beq $t2, $0, done 
	la $a0, '-'
	li $v0, 11
	syscall
	addi $t1, $t1, 1  #i++
	j for

done:
	li $v0, 10
	syscall