.section .text
	.global calculate
	calculate:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	
	pushq %rbx
	pushq %r10
	
	movl %edi, %eax
	imull %esi
	movl %eax, -4(%rbp)
	
	movl %edi, %eax
	subl %esi, %eax
	movl %eax, -8(%rbp)
	
	movl %edi, %eax
	movl %esi, %ebx
	
	pushq %rdi
	pushq %rsi
	
	movb $'*', %dil
	movl %eax, %esi
	movl %ebx, %edx
	movl -4(%rbp), %ecx
	call print_result
	
	popq %rsi
	popq %rdi
	
	movl %edi, %eax
	movl %esi, %ebx
	
	pushq %rdi
	pushq %rsi
	
	movb $'-', %dil
	movl %eax, %esi
	movl %ebx, %edx
	movl -8(%rbp), %ecx
	call print_result
	
	popq %rsi
	popq %rdi
	
	movl -8(%rbp), %eax
	subl -4(%rbp), %eax

	popq %r10
	popq %rbx
	
	addq $8, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
