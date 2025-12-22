.data 
	input : .word
	float : .float
	buffer : .space 50
	Double: .double
.text
	#take input and store it in memo
	##INT
	li $v0 , 5
	syscall
	sw $v0,input
	
	# printing
	lw $a0 , input
	li $v0 , 1
	syscall 	
	
	###################
	##FLOAT
	li $v0 , 6
	syscall
	swc1  $f0 , float
	
	# printing
	lwc1 $f12 , float 
	li $v0 , 2
	syscall 
	
	# Get the string input    
   li $v0, 8                      
   la $a0, buffer          
   li $a1, 50                   
   syscall
   
   li $v0 , 4
   syscall 
   
   ##########
   #double
   li $v0 , 6
   syscall
   swc1 $f0 , Double
   
   li $v0 , 3
   lwc1 $f12 , Double
   syscall
   
                            
		