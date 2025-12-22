.data
array:  .word 1, 2, 3, 4, 5, 6
size:   .word 6
newline: .asciiz "\n"

.text
.globl main
main:
    # ===== Reverse array =====
    la   $t0, array
    lw   $t2, size

    #addi $t2, $t2, -1      # size - 1
    mul  $t3, $t2, 4
    add  $t1, $t0, $t3

loop:
    bge  $t0, $t1, print

    lw   $t4, 0($t0)
    lw   $t5, 0($t1)

    sw   $t5, 0($t0)
    sw   $t4, 0($t1)

    addi $t0, $t0, 4
    addi $t1, $t1, -4

    j    loop

# ===== Print array =====
print:
    la   $t0, array
    lw   $t1, size
    li   $t2, 0

loops:
    bge  $t2, $t1, end

    sll  $t3, $t2, 2
    add  $t4, $t0, $t3
    lw   $a0, 0($t4)

    li   $v0, 1
    syscall

    # print newline
    la   $a0, newline
    li   $v0, 4
    syscall

    addi $t2, $t2, 1
    j    loops

end:
    li   $v0, 10
    syscall
