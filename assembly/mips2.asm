############# intro2 ###########
.data
 num1 : .word 2
 num2 : .word 3

.text
 lw $t1, num1
 lw $t2 , num2
 
 mul $t0 , $t1,$t2
 
 move $a0 , $t0
 li $v0 , 1
 syscall 
 
 mult $t1,$t2
 mflo $t0
 mfhi $t4
 
 sll $t0 , $t2 , 2
 move $a0 , $t0
 li $v0 , 1
 syscall       
 
  div $t1, $t2     
  mflo $t3          
  mfhi $t4          
# Divide $t1 by $t2 
# Get quotient (lower 32 bits) into $t3 
# Get remainder (upper 32 bits) into $t4

# there is divu for unsigned values