.section .text
	.global d_square
	d_square:
		movslq %edi, %rax # set first parameter in register rax
		imulq %rax # x^2
		movq $2, %rcx # set element 2 in register ecx
		imulq %rcx # 2 * x^2 -> result return in register rax
		ret
