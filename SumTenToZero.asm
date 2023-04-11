 # Assume that register 5 stores 10.
 # Write the code to sum up 1, 2, ..., 10 and store the result into register 6.

.text 
	addi s5, zero, 10 # reg5 = 10  
	addi s6, zero, 0 # reg6 = 0
	
ciclo:	add s6, s5, s6  # reg6 = 10 + 0 = 10 
	addi s5, s5, -1 # reg5 = 10 - 1 = 9
	bne s5, zero, ciclo # reg5[9] != 0 -> line 10
	# After a certain time of iteration when it will be false, we will move 
	# forward and in order to print we will save the content of s6 into a0.
	
	addi a0, s6, 0
	addi a7, zero, 1
	ecall
	addi a7, zero, 10
	ecall	
