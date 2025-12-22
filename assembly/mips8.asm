############ Print that Array , Nice !! ##########
.data
	array: .word 1,2,3,4,5,6
	sz: .word 6
	space: .asciiz " "
.text
	main2:
	 lw $t4 ,sz
	 la	$t0 ,array
	 li $t1 , 0 #iterator
	 
	 loop:
	 	bge $t1 ,$t4,end 
	 	sll $t5 ,$t1,2 #whole jump
	 	add $t2 ,$t0,$t5 #Now access
	 	lw $t3 , 0($t2)
	 	move $a0 ,$t3
	 	li $v0 ,1
	 	syscall
	 	li $v0 , 4
	 	la $a0 , space
	 	syscall
	 	addi $t1,$t1,1
	 	j loop
	 end:
	 	li $v0 ,10
	 	syscall	
		
	 		