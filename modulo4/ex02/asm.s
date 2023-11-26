.section .text
.global sum2_n

sum2_n:
	movl %edi, %ecx
	movslq %ecx,%rcx
	movq $0, %rax
	
sum:
	cmpq $0,%rcx
	jle square
	addq %rcx ,%rax
	decq %rcx
	jmp sum
	
square:
	imulq %rax
	
return:
	ret
