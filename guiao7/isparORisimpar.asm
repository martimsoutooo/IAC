	.data
prompt1:.asciiz "Introduza um numero: "
strpar: .asciiz "O numero é par\n"
strimp: .asciiz "O numero é impar\n"

	.text
main:
	li $v0,4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	
	
	
	
if:
	andi $t1, $t0, 1 
	bne  $t1, 0, else
	la $a0, strpar
	li $v0, 4
	syscall
	
	
	li $v0, 10
	syscall
	
else:	
	la $a0, strimp
	li $v0, 4
	syscall

	li $v0, 10
	syscall
	
	
	