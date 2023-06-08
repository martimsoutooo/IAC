# Tradução do programa em linguagem C para assembly do MIPS
 	.data
result: .asciiz "\nO numero em que pensaste e': "
prompt: .ascii "1. Pensa num numero!\n"
 	.ascii "2. Adiciona 3\n"
 	.ascii "3. Multiplica o resultado por 2\n"
 	.ascii "4. Subtrai o numero em que pensaste\n"
 	.asciiz "\n\tQual o resultado? "
##################################################################
 	.text
 	.globl main
			# int num; "num" reside no registo $t0
	#
main: 	la $a0, prompt 	# $a0 = prompt
 	li $v0, 4 	# $v0 = 4 (syscall "print_str")
 	syscall 	# print_str( prompt )
 	#
 	li $v0, 5 	# $v0 = 5 (syscall "read_int")
 	syscall 	# read_int() (o valor lido é
 			# devolvido no reg. $v0)
 	move $t0, $v0 	# $t0 = $v0 ( num = read_int() )
 	#
 	la $a0, result 	# $a0 = result
 	li $v0, 4 	# $v0 = 4 (syscall "print_str")
 	syscall 	# print_str( result )
 	#
 	sub $a0, $t0, 6 # $a0 = $t0 - 6 ( $a0 = num - 6)
 	li $v0, 1 	# $v0 = 1 (syscall "print_int")
 	syscall 	# print_int( num - 6 )
 	#
 	li $v0, 10 #
 	syscall 	# exit()
 	
 #Resposta pergunta 2.1, a) O endereço foi 0x00400000
 #Resposta pergunta 2.1, b) As instruções da máquina real foram 'lui' e 'ori'
 #Resposta pergunta 2.1 c) O código máquina la instrução 'lui'= 0x00001001 e da instrução 'ori'=0x0000001f
 #Resposta pergunta 2.1 d) O valor atual do regist Program Counter é 32
 
 #Resposta pergunta 2.2, O endereço da variável result é 0x10010000 e o endereço da variável prompt é 0x10010020
 
 
 