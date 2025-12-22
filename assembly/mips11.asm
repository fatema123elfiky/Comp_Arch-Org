####### Simple func to deal with more than 4 args #########
.text
	main:
		li $a0 ,1
		li $a1 ,1
		li $a2 ,1
		li $a3 ,1
		li $t0 ,2
		
		addi $sp ,$sp , -4
		sw $t0 , 0($sp) 
		
		jal func
		
		addi $sp ,$sp , 4
		move $a0 ,$v0
		li $v0 , 1
		syscall
		li $v0, 10    
        syscall

		
		
		func:
			lw $t0 ,0($sp)
			add $v0 ,$a0 ,$a1
			add $v0 ,$v0,$a2
			add $v0 ,$v0,$a3
			add $v0 ,$v0,$t0
			
			jr $ra