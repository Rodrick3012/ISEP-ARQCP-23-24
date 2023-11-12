.section .text
	.global vec_sum
	vec_sum:
		movw $0, %dx # set the counter of elements in register edx
		
		movw %si, %cx # set the length of array in register cx
		movl $0, %eax	#0 where we summing
		
		
	my_loop:
		cmpw %dx, %cx # compares the counter of elements to the length of array
		je end # if are equal, jumps to end
		
		
		addl (%rdi), %eax	#summing elements
		
		incq %rdi	#goes to next element of array
		incw %dx	#word counter ++
		
		jmp my_loop
		
	
		
		
	end:
		ret
		
		
		
