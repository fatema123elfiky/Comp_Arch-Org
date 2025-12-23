################ MAX IN ARR ################
.data
	arr: .word 10,8,9,20,5,30,1,4,40
	size: .word 9
.text
	main:
		la $t0 ,	arr
		lw $t1,size
		lw $t2 ,0($t0)
		li $t3 , 0 #index
		loop:
			bge $t3,$t1,end
			sll $t4,$t3,2
			add $t5 ,$t0,$t4
		    lw $t6  ,0($t5)
			bgt  $t6 , $t2 , max
			addi $t3,$t3,1
			j loop
			
			max:
				move $t2,$t6		
				addi $t3,$t3,1
				j loop
		end:
			li $v0 ,1
			move $a0 ,$t2
			syscall
						
		