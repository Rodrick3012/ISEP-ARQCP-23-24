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
		movl op1(%rip), %eax # set op1 in register eax
		addl op2(%rip), %eax # make the sum (op1 + op2)
		ret
	subtraction:
		movl op1(%rip), %eax # set op1 in register eax
		subl op2(%rip), %eax # make the subtraction (op1 - op2)
		ret
	multiplication:
		movl op1(%rip), %eax # set op1 in register eax (needed to make the multiplication)
		movl op2(%rip), %ecx # set op2 in register ecx
		mull %ecx # make the multiplication (op1 * op2)
		ret
	division:
		movl op1(%rip), %eax # set op1 in register eax (needed to make the division)
		movl op2(%rip), %ecx # set op2 in register ecx
		divl %ecx # make the division (op1 / op2)
		ret
	modulus:
		movl op1(%rip), %eax # set op1 in register eax (needed to make the division)
		movl op2(%rip), %ecx # set op2 in register ecx
		divl %ecx # make the division (op1 / op2)
		movl %edx, %eax # set the reminder (saved in register edx) to a return register
		ret
	power_of_2:
		movl op1(%rip), %eax # set op1 in register eax (needed to make the multiplication)
		mull %eax # make the multiplication (op1 * op1), this is equals op1^2
		ret
	power_of_3:
		movl op1(%rip), %eax # set op1 in register eax (needed to make the multiplication)
		mull %eax # make the multiplication (op1 * op1), this is equals op1^2
		movl op1(%rip), %ecx # set another op1 in register ecx
		mull %ecx # make another multiplication (op1 * op1 * op1), this is equals op1^3
		ret
