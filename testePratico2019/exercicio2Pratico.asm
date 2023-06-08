	.data
frase: 	.asciiz "Te3m In5tei1ros Mis8tura9dos"
msg:	.asciiz "\nO numero de Alfas e:"

	.text
main:
	la $a0, msg
	li $v0, 4
	syscall
	
	jal n_alphas
	add $s0, $v1, $0
	
	
	la $a0, ($s0)
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
n_alphas:
	li $a1, -1  #i
	li $a2, 0   #alfas
	
for:	
	addi $a1, $a1, 1
	lb $a3, frase($a1)
	beq  $a3,'\0' ,return
	
if:
	ble $a3, 'A', else
	bge $a3, 'z', else
		
increment:
	addi $a2, $a2, 1
	
	j for
	
else:
	j for

	
return:
	add $v1, $a2, $0
	jr $ra
	
