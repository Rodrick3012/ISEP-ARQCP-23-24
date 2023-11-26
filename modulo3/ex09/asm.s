.section .text
	.global vec_search
	vec_search:
	
	movl $0, %eax # clean eax where we returnin
	movq $0 , %rcx	#clean rcx
	movl %esi, %ecx	#move length to ecx
	movq $0, %r8	#clean r8
	
	
my_loop:
	
		cmpl %r8d, %ecx # compares the counter of elements to the length of array
		jl end # if are equal, jumps to end
		
		cmpl (%rdi), %edx	#verifies if equal
		je found 	#jumps to verifie
		
		incq %rdi	#next int
		incl %r8d	#inc length
		
		jmp my_loop
		
found:
	movl %edi, %eax	#mov to eax in order to return
	
	
end:
	movl $0, %eax	#if not found returns 0
	
		
		
		
