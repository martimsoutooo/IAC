.data
minus:  .asciiz "martim santos"
maius:  .space  21

.text
main:
    	li $t0, 0
    
while:
    	lb $t1, minus($t0)
    	beq $t1,'\0', print
    
    	addi $t2, $t1, 'A'
    	subi $t2, $t2, 'a'
    
    	sb $t2, maius($t0)
    
    	addi $t0, $t0, 1
    	
    	j while
    
print:
    	la $a0, maius
    	li $v0, 4
    	syscall
    
    	li $v0, 10
    	syscall
    
    	li $v0, 10
    	syscall
