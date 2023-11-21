.section .text
	.global calculate
	calculate:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rbp
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
	
	popq %rdi
	popq %rsi
	
	movl %edi, %eax
	movl %esi, %ebx
	
	pushq %rdi
	pushq %rsi
	
	movb $'-', %dil
	movl %ebx, %esi
	movl %eax, %edx
	movl -8(%rbp), %ecx
	call print_result
	
	popq %rdi
	popq %rsi
	
	movl -8(%rbp), %eax
	movl -4(%rbp), %ebx
	subl %ebx, %eax
	
	popq %r10
	popq %rbx
	addq $8, %rbp
	movq %rbp, %rsp
	popq %rbp
	ret
