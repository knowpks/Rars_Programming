# Exercise: Given two integers stored in the memory 
# (in the data segment), print the smaller.

.data 
		.word 0
		.word 10
.text
		lui t0, 0x10010
		lw  t1, 0(t0)
		lw  t2, 4(t0)
		# if t1 < t2 print t1
		blt t1, t2, print 
		addi a0, t2, 0
		addi a7, zero, 1
		ecall
	
		beq zero, zero, exit
		# else: print t2
print:	addi a0, t1, 0
		addi a7, zero, 1
		ecall	
	
exit:	addi a7, zero, 10
		ecall
