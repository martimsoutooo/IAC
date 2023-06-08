	.data
frase1:		.space 20
frase2: 	.space 20
frase3: 	.space 40
inputFrase1: 	.asciiz "Insira a frase1: "
inputFrase2: 	.asciiz "Insira a frase2: "
resultFrase1: 	.asciiz "O numero de caracteres da frase 1 é: "
result:		.asciiz	"A frase concatenada é: "

	.text
main:
	la $a0, inputFrase1
	li $v0, 4
	syscall
	
	la $a0, frase1
	la $a1, 20
	li $v0, 8
	syscall
	
	la $a0, inputFrase2
	li $v0, 4
	syscall
	
	la $a0, frase2
	la $a1, 20
	li $v0, 8
	syscall
	
	la $a0, resultFrase1
	li $v0, 4
	syscall
	
	jal strlen
	add $s0, $v1, $0
	
	la $a0, ($s0)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
strlen:
	li $t0, -1		#i = -1
	li $t1, 0		#n = 0
	
while:
	lb $t2, frase1($t1)	# $t2 = str[i++]
	
	beqz $t2, return	#if $t2 = 0 go to return
	addi $t0, $t0, 1	# n++
	
	addi $t1, $t1, 1	# i++
	j while			# go to while again
	
return:	
	add $v1, $t0, $0	# load to $v1 the result
	jr $ra			#return 
	



