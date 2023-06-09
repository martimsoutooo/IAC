print_fact:
	li $t0, 0		# i = 0
	li $t4, -1		# incremento do argumento da função fatorial
	bge $t1, $0, else	# vai para albel else se $t1 >= 0 , vai para o else 
	j return1		# se o comentário acima não acontecer da return -1
else:
	bgt $t0, $t1, return	# se i >= n o ciclo acaba e a função da return de 1
	
	addi $t4, $t4, 1	#increntar o agrumento da função fatorial
	jal factorial		#chamar a função
	add $s0, $v1, $0	#colocar o conteudo de $v1(return da função fatorial) em $s0
	
	la $a0, ($s0)
	li $v0, 1		#print do inteiro
	syscall

	addi $t0, $t0, 1	#i++
	
return:
	addi $t2, $0, 1		
	jr $ra			#return 1
	
	
return1:
	subiu $t3, $0, 1
	jr $ra			#return -1
	