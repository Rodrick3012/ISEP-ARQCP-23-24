.section .text
	.global str_copy_roman2
	
	str_copy_roman2:
	
		movb (%rdi), %al # set the pointer of the input string to register al
	my_loop:
		cmpb $0, %al # compares the string terminator with the register al
		je end # jump to end if string terminates
		
		cmpb $'u', %al # compares the value ascii 'u' with the char in the position
		je replace_u # jump if the value ascii 'u' is  equals the char in the position
		
		cmpb $'U', %al	# compares the value ascii 'U' with the char in the position
		je uppercase_v # jump if the value ascii 'u' is  equals the char in the position
		
		
		jmp not_replace	# jump to not_replace if neither 'u' nor 'U'
		
		
	replace_u:
		
		movb $'v', %al      # replace value 'u' with value 'v'
		movb %al, (%rsi)    # copy the char value to the destination pointer in the second parameter
		jmp update_destination
		
		
		
	uppercase_v:
		movb $'V', %al      # replace value 'U' with value 'V'
		movb %al, (%rsi)    # copy the char value to the destination pointer in the second parameter
		jmp update_destination
		
		
	not_replace:
		movb %al, (%rsi)    # copy the char value to the destination pointer in the second parameter
		jmp update_destination
		
		
	update_destination:
		incq %rdi           # increments first parameter - move to the next char position
		incq %rsi           # increments second parameter - move to the next char position
		movb (%rdi), %al    # set the next value in the first parameter to the register al
		jmp my_loop         # jumps back to the loop

		
	end:
		movb $0, (%rsi) # null-terminates the output string
		ret

