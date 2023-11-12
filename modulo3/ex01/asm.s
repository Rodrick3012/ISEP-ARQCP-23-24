
.section .text
	.global five_count
	
	five_count:
	
		movb (%rdi), %al # set the pointer of the input string to register al
		movl $0, %ecx	#counter of '5' chars in a string
		
		
	my_loop:
		cmpb $0, %al # compares the string terminator with the register al
		je end # jump to end if string terminates
		
		cmpb $'5', %al # compares the value ascii '5' with the char in the position
		jne not_count	# jump if the value ascii '5' is not equals the char in the position
		incl %ecx 	#counter ++
		
	not_count:
		incq %rdi # increments first parameter - move to the next char position
		movb (%rdi), %al # set the next value in the first parameter to the register al
		jmp my_loop # jumps the loop
		
	end:
		movl %ecx, %eax		#move to eax to return
		ret
