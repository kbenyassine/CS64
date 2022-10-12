# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	li $v0 5
	syscall
	move $t0 $v0
	li $v0 5
        syscall
	move $t1 $v0
	li $t4 8
	sub $t2 $t0 $t1
	sll $t2 $t2 4
	li $t3 0
	add $t3 $t2 $t4
	li $v0 1
	move $a0 $t3
	syscall

exit:
	li $v0 10
	syscall

