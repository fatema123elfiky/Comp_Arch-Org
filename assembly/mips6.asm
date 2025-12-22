#######Prime Factors Problem ##########
.data
	prompt : .asciiz "Enter a number to find its prime factors:"
	ans: .asciiz "Ans are : "
	space:.asciiz" "

.text

	#print
	li $v0 , 4
	la $a0 , prompt
	syscall
	
	#input
	li $v0 , 5
	syscall
	move $t0 , $v0
	
	li $t1 , 2 #iterator
	
	loop:
		div $t0 , $t1
		mfhi $t2
		
		beqz $t2 , divisible
		#not divisible
		addi $t1 , $t1 ,1
		bge $t0 , $t1 ,loop
		j end 
		
		divisible:
			mflo $t0
			#print it !
			li $v0 , 1
			move $a0 ,$t1
			syscall
			li $v0 , 4
			la $a0 , space
			syscall
			j loop
		
	
	end:
	li $v0 , 10
	syscall																													
	

																																																																																				