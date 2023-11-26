.section .data
.section .text
.global sum_multiples_x  #int sum_multiples_x(char *vec, int x) 

sum_multiples_x:
	
	xorq %r8,%r8
	movl %esi,%eax
	shr $16,%eax
	andl $0xFF,%eax
	movl %eax,%ecx
	cmp $0,%eax
	je end
	
	
loop_vec:
	xorq %rdx,%rdx
	
	movb (%rdi),%al
	
	cmpb $0,%al
	je end
	
	movzbl %al,%eax
	movzbl %al,%r10d
	idiv %ecx
	
	cmpl $0, %edx
	jne next_num
	addl %r10d,%r8d
	
	
next_num:
    inc %rdi
    jmp loop_vec
    
    
end:
	xorq %rax,%rax
	movl %r8d,%eax
    ret
