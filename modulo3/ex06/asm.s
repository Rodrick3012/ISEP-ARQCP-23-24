.section .text
	.global encrypt
	encrypt:
	movl $0, %eax
	my_loop:
		cmpb $0, (%rdi)
		je end
		cmpb $' ', (%rdi)
		je skip
		cmpb $'a', (%rdi)
		je skip
		addb $1, (%rdi)
		incl %eax
	skip:
		incq %rdi
		jmp my_loop
	end:
		ret
