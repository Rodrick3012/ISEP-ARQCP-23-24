.section .text
	.global vec_add_three
	vec_add_three:
	movl %esi, %ecx
	movl $0, %edx
	my_loop:
		cmpl %edx, %ecx
		je end
		leaq (%rdi, %rdx, 2), %rax
		addw $3, (%rax)
		incl %edx
		jmp my_loop
	end:
		ret
