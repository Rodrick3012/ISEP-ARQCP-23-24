.section .text
.global set_2bits

set_2bits:
	movq %rdi, %rax         
    movq %rsi, %rdx         

    movq (%rax), %rcx       

    movq $63, %r8           
    subq %rdx, %r8          
    
    movq %rdx, %rsi         
    call set_bit

    movq %r8, %rsi          
    call set_bit
    ret

