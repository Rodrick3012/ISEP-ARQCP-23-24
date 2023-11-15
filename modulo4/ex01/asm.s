.section .text
	.global d_square
	d_square:
		movl %edi, %eax # set first parameter in register eax
		imull %eax # x^2
		movl $2, %ecx # set element 2 in register ecx
		imull %ecx # 2 * x^2
		movslq %eax, %rax # convert the value in 32-bit to a 64-bit value
		ret
