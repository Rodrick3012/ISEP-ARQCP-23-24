.section .text
.global call_decr

call_decr:
	pushq %rbp
	movq %rsp, %rbp
	subq $6, %rsp
	
	pushq %rdx 
	movq $0, %rdx
	movq $0, %rax 
	
	movw %di, %r10w
	addw $3, %r10w

	movw %r10w, -2(%rbp)
	leaq -2(%rbp), %rdi
	movb $0x3C, %sil
	call decr
	movswl -2(%rbp), %ecx
	addl %ecx, %eax
	
	
	popq %rdx

	movq %rbp, %rsp
	popq %rbp
	ret
	
