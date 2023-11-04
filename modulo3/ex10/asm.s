.section .text
	.global str_cat
	str_cat:
		movl $0, %ecx # sets the counter of length in register ecx
	concat_first:
		cmpb $0, (%rdi) # compare the null-terminator with the value pointed in rdi
		je reset_counter # jump if first string terminates
		cmpl $40, %ecx # compare the length maximum with value 
		jg reset_counter # jump if length is greater than the maximum
		movb (%rdi), %al # move the value pointed in rdi to register al
		movb %al, (%rdx) # set the value of al in the result string
		incq %rdi # increments the rdi -> move to the next position of first array of char
		incq %rdx # increments the rdx -> move to the next position of result array of char
		incl %ecx # increments the byte counter
		jmp concat_first 
	reset_counter:
		movl $0, %ecx # reset the counter of length to zero
		jmp concat_second
	concat_second:
		cmpb $0, (%rsi) # compare the null-terminator with the value pointed in rsi
		je end # jump if second string terminates
		cmpl $40, %ecx # compare the length maximum with value
		jg end # jump if length is greater than the maximum
		movb (%rsi), %al # move the value pointed in rsi to register al
		movb %al, (%rdx) # set the value of al in the result string
		incq %rsi # increments the rsi -> move to the next position of second array of char
		incq %rdx # increments the rdx -> move to the next position of result array of char
		incl %ecx # increments the byte counter
		jmp concat_second 
	end:
		movb $0, (%rdx) # null-terminates the result string
		ret
