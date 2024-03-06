# This program uses Newton's method to calulate the square root of a number. 
# Newton's method is an iterative method of repeating the same calculation 
# and updating a value until the difference between two runs of the calculation
# is below a pre-determined threshold. 
# We do this using the floating point coprocessor, so this program will 
# demonstrate the instructions to work with floating point numbers, as well as
# moving data to and from the floating point coprocesor.

	.text
	.globl main
main:	l.s 	$f0, Val		#Load the number we cant the square root for into f0
	mfc1 	$a0, $f0		# Put it into a0 for convention
	jal	CALSQRT			# call the square root function

	mtc1 	$v0, $f12		# Move returned value into f12 to print 
	li 	$v0,2			# Print a single precision float
	syscall

	li 	$v0,10			# Exit
	syscall
	
# calsqrt:
# calculating the square root of n
# using the formular x'=(x+n/x)/2
# loop until |x'-x| < 0.001

CALSQRT: addi 	$sp, $sp, -24		# Save all the registers we use to stack
	swc1	$f0, 20($sp)		# swc1 - store word from co-porcessor 1
	swc1	$f1, 16($sp)
	swc1	$f2, 12($sp)
	swc1	$f3, 8($sp)
	swc1	$f20, 4($sp)
	swc1 	$f21, 0($sp)
	
	mtc1 	$a0, $f0 		# $f0 = n
	li.s 	$f20, 2.0 		# $f20 storing constant 2 for dividing
	li.s 	$f21, 0.001 		# $f21 = 0.001 for exit comparision
	div.s 	$f1, $f0, $f20 		# $f1 = n/2
LOOP:	div.s 	$f2, $f0, $f1 		# $f2 = n/x
	add.s 	$f2, $f2, $f1 		# $f2 = n/x + x
	div.s 	$f2, $f2, $f20 		# $f2 = x'=(n/x + x)/2
	sub.s 	$f3, $f2, $f1 		# $f3 gets x'-x
	abs.s 	$f3, $f3 		# $f3 = |x'-x|
	c.lt.s 	$f3, $f21 		# set the flag if |x'-x| < 0.001
	bc1t 	DONE			# branch if true
	mov.s 	$f1, $f2
	j 	LOOP
DONE:	mfc1 	$v0, $f2		# Place result in v0 for convention

	lwc1 	$f0, 20($sp)		# Restore stack
	lwc1 	$f1, 16($sp)		# lwc1	Load word to coprocessor 1
	lwc1 	$f2, 12($sp)
	lwc1 	$f3, 8($sp)
	lwc1 	$f20, 4($sp)
	lwc1 	$f21, 0($sp)
	addi 	$sp, $sp, 24
	jr 	$ra			# Return to main
	
	.data
Val: .float 15674.25			# number we want the square root for
