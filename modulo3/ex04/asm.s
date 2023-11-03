.section .text
	.global vec_add_three
	vec_add_three:
	movl %esi, %ecx # set the length of array in register ecx
	movl $0, %edx # set the counter of elements in register edx
	my_loop:
		cmpl %edx, %ecx # compares the counter of elements to the length of array
		je end # if are equal, jumps to end
		leaq (%rdi, %rdx, 2), %rax # sets the position of array in index with the scale of the value (word) and save in the register rax
		addw $3, (%rax) # adds 3 to the value of the array 
		incl %edx # increments the counter
		jmp my_loop # make the loop
	end:
		ret 
