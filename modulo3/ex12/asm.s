.section .text
	.global vec_zero
	vec_zero:
	movb $0, %al # set the counter of modified values in register al
	movl $0, %ecx # set the counter of values in array in register ecx
	my_loop:
		cmpl %esi, %ecx # compares the counter with the length of array
		je end # jump if counter is equal to the length of array
		leaq (%rdi, %rcx, 4), %rdx # calculate the address of value in array
		cmpl $50, (%rdx) # compare the current value in array with 50
		jl skip # if the number is less than 50, skip the modification
		movl $0, (%rdx) # if the number is greater or equal than 50, set the value to 0
		incb %al # increments the counter of modified values
	skip:
		incq %rdi # increments the rdi -> move to the next position
		incl %ecx # increments the counter of values in array
		jmp my_loop
	end:
		ret
