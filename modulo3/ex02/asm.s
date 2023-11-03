.section .text
	.global str_copy_roman
	str_copy_roman:
		movb (%rdi), %al # set the pointer of the input string to register al
	my_loop:
		cmpb $0, %al # compares the string terminator with the register al
		je end # jump to end if string terminates
		cmpb $'u', %al # compares the value ascii 'u' with the char in the position
		jne not_replace # jump if the value ascii 'u' is not equals the char in the position
		movb $'v', %al # replace value 'u' with value 'v'
	not_replace:
		movb %al, (%rsi) # copy the char value to the destination pointer in the second parameter
		incq %rdi # increments first parameter - move to the next char position
		incq %rsi # increments second parameter - move to the next chat positon
		movb (%rdi), %al # set the next value in the first parameter to the register al
		jmp my_loop # jumps the loop
	end:
		movb $0, (%rsi) # null-terminates the output string
		ret
