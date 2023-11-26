.section .text
.global join_bits

join_bits:
	#rdi = long a
	#rsi = long b
	#rdx = char pos
     
	movl $0, %r8d
    movl $1, %r9d
    movq $1,%rax
    addl $1,%edx
    
    mask_a:
		cmp %r8d,%edx
		je next
		shlq %rax
		
		incl %r8d
        jmp mask_a
        
    next:
        subq $1, %rax
        
		movq %rax,%r10
		notq %r10		#mask_b

		andq %rax,%rdi		
		andq %r10,%rsi
		orq %rdi,%rsi
		movq %rsi,%rax
		
    
    ret                     
