.section .text
	.global test_even
	.global vec_sum_even
	
	test_even:
		movl %edi, %eax # set the first parameter in register eax (necessary to make the division)
		cltd # sign-extended register in eax to eax:edx
		movl $2, %ebx # set value 2 in register eax
		idivl %ebx # divides the first parameter with value 2
		cmpl $0, %edx # compares the reminder with 0 (check if the number is odd or even)
		jne odd # jump to odd if the number is odd
		movl $1 %eax # if the number is even, set value 1 in register eax to return
		ret
	odd:
		movl $0, %eax # if the number is odd, set value 0 in register eax to return
		ret
	vec_sum_even:
		pushq %ebx # adds 8-byte in stack "top" to temporary register ebx
		movl $0, %ecx # set value 0 in register ecx -> index of array
		movl $0, %edx # set value 0 in register edx -> sum of even numbers
	my_loop:
		cmpl %ecx, %esi # compares the value of index and the number of elements in array (second parameter)
		je end # jump if index equals the number of elements in array
		movl (%rdi, %rcx, 4), %edi # set the position of pointer of array with index with the scale of value (double word) in register edi
		call test_even # calls the test_even function
		cmpl $0, %eax # compares the value 0 with the value in register eax (checks if the number is even or odd)
		je skip # skips the next lines if number is odd
		addl %edi, %edx # if the number is even, sum the number and stors in register edx
	skip:
		incl %ecx # increments the index -> move to the next position of array
		jmp my_loop # loops the function
	end:
		movl %edx, %eax # set value in register edx to eax, to return the value
		popq %rbx # remove 8-bytes in stack "top" to temporary register ebx
		ret
