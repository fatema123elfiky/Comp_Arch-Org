################# intro1 ################


######## data section #######
.data
 message:.asciiz "Hello,Mips\n"
 num: .word 42
 add1: .word 1
 add2: .word 3
 
######## coding section####### 
.text

# Printing
li $v0 , 4 ## loading syscode " loading immediate for constants" 
la $a0 , message # passing args of sysccall
syscall

li $v0 , 1
lw $a0 , num
syscall

# loading content
lw $t1 , add1
lw $t2 , add2

# apply addition and moving content from t0 to a0
add $t0 , $t1 ,$t2
li $v0 , 1
move $a0 ,$t0 
syscall

# apply subtraction and moving content from t0 to a0
sub $t0 ,$t1,$t2
li $v0 , 1
move $a0 , $t0
syscall
