	.data
prompt: .asciiz "Introduza um número: "
prompt1: .asciiz "Introduza um número: "
result: .asciiz "A soma dos números é: "

	.text
main:	
	li $v0, 4	
	la $a0, prompt		#Print da string prompt
	syscall
	
	li $v0, 5
	syscall			#Read int do inteiro que o utilizador colocou 
	move $t0, $v0		#move o valor lido para o endereço $t0
	
	li $v0, 4
	la $a0, prompt		#Print da string prompt
	syscall			
	
	li $v0, 5
	syscall			#Read int do inteiro que o utilizador colocou
	move $t1, $v0		#move o valor lido para o endereço $t1
	
	add $t2, $t0, $t1	#Soma $t1 e $t0 e guarda no endereço $t2
	
	li $v0, 4
	la $a0, result		#Print da string result
	syscall
	
	li $v0, 1
	move $a0, $t2		#Print do endereço $t2
	syscall
	
	li $v0, 10		#exit
	syscall

#Resposta a pergunta 3.3, quando substituimos a instrução print_int10 por print_intu10, e fazemos
#uma soma que deveria dar negativo o resultado dá errado, pois o print_intu da print a um resultado sem sinal
	
	
	