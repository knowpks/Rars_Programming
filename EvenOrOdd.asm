# Exercise 1: Given an integer in the data segment, 
# print "odd" if the number is odd, and "even" if the number is even.

.data	
	.word  0
	.asciz "even"
	.asciz "odd"
.text
	
	lui a0, 0x10010
	lw  a1, 0(a0) # load 5 from the memory
	andi a1, a1, 1 # check if a1 * 1 = 0 or 1(lastbit)
	beq  a1, zero, iseven 
	# if it's even, we will move to "iseven:" 
	# otherwise we will print odd and exit 
	
	#print odd:
	addi a0, a0, 9
	addi a7, zero, 4
	ecall
	
	#print even
iseven:	addi a0, a0, 4
	addi a7, zero, 4
	ecall
	
	#Exit
	addi a7, zero, 10
	ecall
