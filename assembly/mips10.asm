########## If condition #########
.data
	a:.word 8
	b:.word 5
	c:.word 7
.text
	lw $t0 ,a
	lw $t1 ,b
	
	slt $t2 ,$t0 , $t1
	beq $t2 ,$zero, else
	li $t3,1
	sw $t3, c
	j end 
	else:
		li $t3 ,0
		sw $t3,c
	end:
	 lw $a0 ,c
	 li $v0 , 1
	 syscall		
	

