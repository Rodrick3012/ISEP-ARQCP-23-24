.section .data
	.global op1
	.global op2
.section .text
	.global sum
	.global subtraction
	.global multiplication
	.global division
	.global modulus
	.global power_of_2
	.global power_of_3
	sum:
		movl op1(%rip), %eax
		addl op2(%rip), %eax
		ret
	subtraction:
		movl op1(%rip), %eax
		subl op2(%rip), %eax
		ret
	multiplication:
		movl op1(%rip), %eax
		movl op2(%rip), %ecx
		mull %ecx
		ret
	division:
		movl op1(%rip), %eax
		movl op2(%rip), %ecx
		divl %ecx
		ret
	modulus:
		movl op1(%rip), %eax
		movl op2(%rip), %ecx
		divl %ecx
		movl %edx, %eax
		ret
	power_of_2:
		movl op1(%rip), %eax
		mull %eax
		ret
	power_of_3:
		movl op1(%rip), %eax
		mull %eax
		mull %eax
		ret
