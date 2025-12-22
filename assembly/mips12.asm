###### Apply on funcs ########
.data
	prompt:.asciiz"Enter a number: "
	result:.asciiz "The Fibonacci number is: "
	
.text
	li $v0 , 4
	la $a0 , prompt
	syscall
	
	li $v0 ,5
	syscall
	move $a0 ,$v0
	
	jal fib
	
	move $t0 ,$v0
	li $v0 , 4
	la $a0 , result
	syscall
	
	li $v0 ,1
	move $a0 , $t0
	syscall
	
	li $v0 ,10
	syscall
	
	fib:
		
		li $v0 ,0
		li $t1 ,1
		li $t2 , 2
		
		loop:
			bgt $t2 , $a0 , endFib 
			add $t3 , $v0 , $t1
			move $v0 , $t1
			move $t1 , $t3
			addi $t2 ,$t2 ,1
			j loop
		endFib:
			jr $ra
			