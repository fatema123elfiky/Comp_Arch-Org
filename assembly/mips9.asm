######## Access Array how ?? #######
.data
	arr: .word 1,2,3,4,5
	size: .word 5
.text
	main:
		la $t0 , arr
		li $t1 , 2 #index
		sll $t1 , $t1 , 2 #added whole jump
		add $t2 , $t0 ,$t1 #now you can access
		lw $a0 , 0($t2)
		li $v0 , 1
		syscall
		li $v0 ,10
		syscall