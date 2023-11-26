.section .text
.global sum_sub

sum_sub:
	

	movl $0, %eax			      				
	
	addl %edi, %eax				  				
	addl %esi, %eax			  					
	
	# colocar o menor valor no apontado
	movl %edi,%ecx
	subl %esi,%ecx
	movl %ecx, (%rdx)

	ret
	
