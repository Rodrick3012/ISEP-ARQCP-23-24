.section .text
	.global reset_bits
	reset_bits:

		movq $0, %rax
		notq %rax
		movb $63, %cl
		subb %sil, %cl
		shlq %cl, %rax
		
		movq $0, %r8
		notq %r8
		movb %dl, %cl
		shlq %cl, %r8
		
		xorq %r8, %rax
		
		andq %rax, %rdi
		
		movq %rdi, %rax
		ret
	
	
