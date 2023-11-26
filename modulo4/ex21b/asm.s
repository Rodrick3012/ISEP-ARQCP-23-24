.section .text
	.global distance	# int distance(char *a, char *b);
	
	array_size:
		movq $0, %rax # set the array counter
		movq $0, %rcx # set the string length
		
	array_size_loop:
		movb (%rdi, %rax, 1), %cl	    
		cmpb $0, %cl # compares the string terminator with the char
		je exit	# if are equal, exit the method
		incl %eax # increments string counter
		jmp array_size_loop				
	
	distance:
		call array_size	# get the size of string a
		movl %eax, %r8d
		pushq %rdi # store string a
		movq %rsi, %rdi # place string b to call size
		call array_size	# get the size of string b
		popq %rdi # restore string a
		cmpl %r8d, %eax	# compares the size of string a and the size of string b
		jne exit_early # if they're not equal, return -1
		movq $0, %rax # set distance counter
		movq $0, %rcx # set string counter
		
	distance_loop:
		cmpl %ecx, %r8d	# compares the string counter with the length of string a
		je exit	# if are equal, exit the method
		movb (%rdi, %rcx, 1), %r9b	# set char in string a to register r9b
		cmpb (%rsi, %rcx, 1), %r9b # compares the char in the same position in string b with the char in string a 
		jne increment_difference # if they are not equal, increments the distance counter
		incl %ecx # increment the string counter value
		jmp distance_loop
		
	increment_difference:
		incl %eax 
		incl %ecx # increment the string counter -> move to the next postion of string
		jmp distance_loop
		
	exit_early:
		movq $-1, %rax
		
	exit:
		ret
