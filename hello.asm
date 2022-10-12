# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
enter_num: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:

	li $v0 4
	la $a0 enter_num
	syscall
	li $v0 5
	syscall
	move $t0 $v0
	li $t1 1
	and $t2 $t0 $t1
	li $t5 0
	beq $t2 $t5 after_print
	li $t6 2
        mult $t0 $t6
	mflo $t3
        li $v0 1
        move $a0 $t3
        syscall
	j exit

after_print:
	li $t6 3
	mult $t0 $t6
        mflo $t3
	li $v0 1
	move $a0 $t3
	syscall


exit:
	# Exit SPIM: Write your code here!
	li $v0 10
        syscall


