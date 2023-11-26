.section .text
.global calc

calc:
	pushq % rbp # prologue
	movq %rsp , %rbp
	subq $16 , % rsp # allocate 16 bytes for local variables
	movq $0 , -8(% rbp )
	leaq -8(% rbp ) , % rcx
	
	movq %rdi,%rcx
	imulq $4,%rcx
	addq  (%rsi),%rcx
	
	subq $6,%rdx
	imulq %rdx,%rcx
	movq %rcx,%rax
	

	movq %rbp , %rsp # epilogue ( deallocates 16 bytes )
	popq % rbp
ret
	
