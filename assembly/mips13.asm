######### Abs problem ############
.data
	a:.word 4
	b:.word 4
.text
	main:
		lw $a0 ,a
		lw $a1 ,b
		
		jal abs_diff
		
		move $a0 ,$v0
		li $v0 ,1
		syscall
		
		li $v0 ,10
		syscall		
			
	abs_diff:
		sub $t0 , $a0,$a1
		blt $t0 ,$0,op1
		move $v0 ,$t0
		jr $ra
		
		op1:
			li $t1,-1
			mul $t0 ,$t0,$t1
			move $v0 ,$t0
			jr $ra		
	    				
	