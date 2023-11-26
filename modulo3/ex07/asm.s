.section .text
	.global decrypt
	decrypt:
	movl $0, %eax # set the number of char values encrypted in register eax
	my_loop:
		cmpb $0, (%rdi) # compares the string terminator with the value pointed to the string
		je end # jump if string terminates
		cmpb $' ', (%rdi) # compares the space in ascii with the value pointed to the string
		je skip # skips the encryptation of the char value
		cmpb $'a', (%rdi) # compares the value a in ascii with the value pointed to the string
		je skip # skips the encryptation of the char value
		subb $1, (%rdi) # subb value 1 to the value pointed to the string -> encrypts the char
		incl %eax # increments the number of char values encrypted
	skip:
		incq %rdi # increments the pointer -> move to the next position
		jmp my_loop # make the loop
	end:
		ret
		
		
		
