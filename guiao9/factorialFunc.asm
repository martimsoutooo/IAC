	.data
prompt1:.asciiz	"Introduza um numero: "
result: .asciiz "O fatorial do número "
resultCont: .asciiz " é: "


	.text
main:	la $a0, prompt1
	li $v0, 4		#Print prompt1
	syscall
	
	li $v0, 5
	syscall			#Read user input
	move $t0, $v0
	
	addi $a1, $t0, 0
	jal factorial		#call the function 
	add $s0, $v1, $0	#return value
	
	
	
	la $a0, result
	li $v0, 4		#print str result
	syscall
	
	la $a0,($t0)
	li $v0, 1		#print the input number
	syscall
	
	la $a0, resultCont
	li $v0, 4		#print str
	syscall
	
	la $a0,($s0)
	li $v0, 1		#print the return value 
	syscall 
	
	li $v0, 10
	syscall			#exit
	
factorial:
	
	li $t1, 1		#give a value to res
for:
	ble $a1, 0, return	# if i<= 0 go to return
	mul $t1, $t1, $a1	# calculate the factorial
	
	subi $a1, $a1, 1	#i--
	j for			#go to the cycle again
	
return:
	add $v1, $t1, $0
	jr $ra			#return

		
	
	