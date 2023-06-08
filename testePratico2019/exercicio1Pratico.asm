	.data
nums:   .word -2, 3, 6, 4, 8, 126, -131, 17

	.text
main:
    	li $t0, 0    # i=$t0=0
    	li $t1, 8    # size=8
    	la $t4, nums    # Carrega o endereço base da matriz nums
for:
    	bge $t0, $t1, exit    # if $t0 >= $t1, go to exit
    	lw $t2, 0($t4)    # $t2 = nums[i]

    	andi $t3, $t2, 1
    	bnez $t3, continue    # if $t2 is odd, continue to next iteration

    	move $a0, $t2
    	li $v0, 1    # Load the service code for printing integer
    	syscall

    	li $a0, ','    # Load the ASCII code for comma
    	li $v0, 11    # Load the service code for printing character
    	syscall

continue:
    	addi $t0, $t0, 1    # i++
    	addiu $t4, $t4, 4    # Avança para o próximo elemento da matriz (4 bytes)

    	j for

exit:
    	li $v0, 10    # Load the service code for program exit
    	syscall
