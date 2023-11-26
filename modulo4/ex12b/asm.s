.section .text
.global count_bits_zero

count_bits_zero:
	movq $0,%rax
	movq $64,%rcx
	
loop:
	cmpq $0, %rcx
	je end
	
	pushq %rdi
	
	andq $1, %rdi
	cmpq $1, %rdi
	je skip
	incq %rax


skip:
	decq %rcx
	popq %rdi
	shrq %rdi
	jmp loop

end:
	ret
