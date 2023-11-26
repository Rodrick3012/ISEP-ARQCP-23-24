.section .text
	.global call_proc
	
	call_proc:
		movq $0, %rax
		movq $0, %r11
		
		pushq %rbp
		movq %rsp, %rbp
		
		subq $32, %rsp # create space for local variables in the stack
		movq %rdi, -32(%rbp)
		movq %rsi, -24(%rbp)
		movq %rdx, -16(%rbp)
		movq %rcx, -8(%rbp)
		
		# Calling proc
		leaq -8(%rbp), %rcx		
		pushq %rcx	# 8th argument is &x4
		movq -8(%rbp), %rcx
		pushq %rcx # 7th argument is x4

		movq %rdx, %r8 # 5th argument is x3
		leaq -16(%rbp), %r9 # 6th argument is &x3
		movq %rsi, %rdx	# 3rd argument is x2
		leaq -24(%rbp), %rcx # 4th argument is &x2
		leaq -32(%rbp), %rsi # 2nd argument is &x1

		call proc
				
		movq $0, %rax
		movl (%rsi), %eax
		addl (%rcx), %eax
				
		popq %rcx		
		popq %rcx
		
		movq $0, %rdx
		movswl (%r9), %edx
		movq $0, %r8
		movsbl (%rcx), %r8d
		subl %r8d, %edx
		imull %edx
		
		movq %rbp, %rsp
		popq %rbp
		ret
