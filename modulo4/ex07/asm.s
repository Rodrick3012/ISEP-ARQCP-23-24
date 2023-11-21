.section .text
	.global count_even
	count_even:
		movl $0, %ecx # set the vec counter in register ecx
		movl $0, %r9d # set the even counter in register r9d
	my_loop:
		cmpl %esi, %ecx # compares the vec length to the vec counter
		je end # if vec length is equal the vec counter, jumps to end
		movw (%rdi, %rcx, 2), %ax # set element of index in rcx to register ax
		cwtd # sign-extends ax to dx:ax
		movw $2, %r8w # set value 2 in register r8w
		idivw %r8w # divides the value to r8w
		cmpw $0, %dx # compares the reminder with 0
		jne skip # jump to skip, if reminder not equals 0
		incl %r9d # increments the even counter
	skip:
		incl %ecx # increments the vec counter
		jmp my_loop
	end:
		movl %r9d, %eax # returns the even couner
		ret
