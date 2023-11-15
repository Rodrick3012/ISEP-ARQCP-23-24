.section .text
	.global inc_and_cube
	inc_and_cube:
		incw (%rdi) # increments the pointer of first parameter
		movslq %esi, %rax # sets the first parameter in 32-bit to 64-bit in register rax
		imulq %rax # make the square of the element
		movslq %esi, %rdx # sets the first parameter in 32-bit to 64-bit in register rdx
		imulq %rdx # make the cube of the element
		ret
		
