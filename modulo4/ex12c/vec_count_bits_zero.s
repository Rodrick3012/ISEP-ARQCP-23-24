.section .text
.global vec_count_bits_zero

vec_count_bits_zero:
    movl %esi, %ecx
    movq $0,%r8
    

loop_vec:
	cmpl $0, %ecx
    je end
    movl (%rdi),%edx
    
    pushq %rdi
    pushq %rcx
    
    movl %edx,%edi
    call count_bits_zero
    popq %rcx
    popq %rdi
    addq %rax,%r8
    
    
	addq $4, %rdi
    decl %ecx
    jmp loop_vec

    
end:
	movq %r8,%rax
    ret
