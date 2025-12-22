########## Factorial problem #############3
.data
	prompt: .asciiz"Enter number to calculate factorial :"
	res: .asciiz"Ans is : "
.text
	#Print
	la $a0 ,prompt
	li $v0 , 4
	syscall
	
	#input
	li $v0 , 5
	syscall
	
	#move $t0,$a0 #number
	li $t1 , 1	#nums
	li $t3 , 1
	
    loop:
    	bgt $t1 , $v0 , end
    	mul $t3,$t1,$t3
    	addi $t1,$t1,1 #increment
    	j loop
    end:			
    	li $v0 , 1
    	move $a0 , $t3
    	syscall
    	li $v0 ,10
    	syscall 