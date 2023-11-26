.section .text
.global join_bits

join_bits:
	pushq %rbp
	movq %rsp,%rbp
	
    movsbq %dl, %rdx         
    incq %rdx                

    movq $1, %rcx           

loop_shift:
     decq %rdx                
    cmp $0,%rdx
    je continue             
    
    shlq %rcx                
    incq %rcx
   
    jmp loop_shift           

continue:
	movq %rcx,%r8
    notq %r8                

    andq %rdi, %rcx          
    andq %rsi, %r8          
    orq %rcx, %r8          

    movq %r8, %rax   
    
    movq %rbp,%rsp
	popq %rbp       
    ret                     
