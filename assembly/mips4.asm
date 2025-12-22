########## How to loop Using labels ##############
.data
	sum: .word 0
	i: .half 0
.text		
	lw $t0 ,sum
	lw $t1 , i
	li $t2 ,5
	
	loop_start:
		slt $t3,$t2,$t1
		bne $t3, $zero ,end
		add $t0 ,$t0 ,$t1
		addi $t1 ,$t1, 1
		j loop_start
		
	end:
	  move $a0 , $t0
	  li $v0 , 1
	  syscall
	  
	  
	  li $v0 , 10
	  syscall
	  
	  						