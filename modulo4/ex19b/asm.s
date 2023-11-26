.section .text
	.global add_byte
	add_byte:
		movl $0, %ecx # set the vec counter
		movl (%rsi, %rcx, 4), %eax
		movl %eax, (%rdx, %rcx, 4) # set the number of elements in the second vec
		movl (%rsi, %rcx, 4), %r8d # save the number of elements of vec
		incl %ecx # increments vec counter to make the loop
		incl %r8d # increments number of elements to make the loop
		
	my_loop:
		cmpl %r8d, %ecx
		je end # if the two numbers are equal, jump to end
		
		movl (%rsi, %rcx, 4), %eax
		sarl $8, %eax # right-shift arithemetic the element to obtain only the byte of the value
		andb $0xFF, %al # use a mask to save the element in a byte register
		
		movl (%rsi, %rcx, 4), %r9d
		andl $0xFFFF00FF, %r9d # use a mask to save the all values, except the value used to sum
		
		addb %dil, %al # adds char x and saves in register al
		movzbl %al, %eax # transform into a 32-bit register
		sall $8, %eax # left-shift arithmetic the element to fit in the second byte of the value
		
		orl %r9d, %eax # make the junction of the two elements
		movl %eax, (%rdx, %rcx, 4) # move the value to second vec
		
		incl %ecx # increments the vec counter
		jmp my_loop
		
	end:
		ret
		
		
