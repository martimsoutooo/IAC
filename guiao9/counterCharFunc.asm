	.data
prompt1:.asciiz "Introduza uma string: "
result: .asciiz "O número de carateres dessa string é: "
array:	.space 	20

	.text
main:
	la $a0, prompt1
	li $v0, 4		#print str prompt1
	syscall
	
	
	la $a0, array
	la $a1, 20		#read user input
	li $v0, 8
	syscall
	
	
	jal strlen		#calls func
	add $s0, $v1, $0	#return value
	
	la $a0, result
	li $v0, 4		#print str result
	syscall
	
	la $a0, ($s0)
	li $v0, 1		#print return
	syscall
	
	li $v0,10
	syscall			#exit
	
strlen:
	li $t0, -1		#i = -1
	li $t1, 0		#n = 0
	
while:
	lb $t2, array($t1)	# $t2 = str[i++]
	
	beqz $t2, return	#if $t2 = 0 go to return
	addi $t0, $t0, 1	# n++
	
	addi $t1, $t1, 1	# i++
	j while			# go to while again
	
return:	
	add $v1, $t0, $0	# load to $v1 the result
	jr $ra			#return 
	
	
	
	
	
	
	
	