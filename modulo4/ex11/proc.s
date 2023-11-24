.section .text
	.global proc
	proc:
		pushq %rbp
		movq %rsp, %rbp
		
		pushq %r10
		pushq %r11
		
		movl %edi, %eax
		addl %edx, %eax
		movl %eax, (%rsi)
		
		movl %edx, %eax
		subl %edi, %eax
		movl %eax, (%rcx)
		
		movswl %r9w, %eax
		addl %edx, %eax
		movw %ax, (%r9)
		
		pushq %rdx
		
		leaq 24(%rbp), %r11
		movb 16(%rbp), %al
		movb $3, %r10b
		imulb %r10b
		movb %al, (%r11)
		
		popq %rdx
		
		popq %r10
		popq %r11
		
		movq %rbp, %rsp
		popq %rbp
