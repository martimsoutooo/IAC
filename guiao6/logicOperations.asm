	.data
	.text
main:
	li $t0, 0x12345678
	li $t1, 0x0000000F
	
	and $t2, $t0, $t1
	
	or $t3, $t0, $t1
	
	nor $t4, $t0, $t1
	
	xor $t5, $t0, $t1
	
	not $t6, $t0
	
 
 #Quando $t0=0x12345678 e $t1=0x0000000F , a operação AND = 0x00000008 ,
 #a operação OR =  0x1234567F, a operação NOR = 0xEDCBA980  e a operação XOR =  0x12345677
	