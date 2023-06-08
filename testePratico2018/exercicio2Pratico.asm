	.data
msg:	.asciiz "\n-->Teste2 de IAC, ex2b<--"
minus:	.asciiz "\nO numero de minusculas e: "

	.text
main: 	
	la $a0, msg
	li $v0, 4
	syscall
	
	la $a0, minus
	li $v0, 4
	syscall
	
	jal nr_minus
	add $s0, $v1, $0
	
	la $a0, ($s0)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
nr_minus:
	li $t0, 0
	li $t2, -1
	
while:
	addi $t2, $t2, 1
	lb $t1, msg($t2)
	beqz $t1, return
	
if:
	li $t3, 'a'   # Caractere literal 'a'
	li $t4, 'z'   # Caractere literal 'z'
	ble $t1, $t3, else
	bge $t1, $t4, else
	
increment:
	addi $t0, $t0, 1
	j while
	
else: 
	j while

	
return:
	add $v1, $t0, $0
	jr $ra
	
	