.section .data
	.global op1
	.global op2
	.global res
	.equ CONST, 20
.section .text
	.global another_sum
	another_sum:
		movl op1(%rip), %eax # place op1 in ecx
		movl op2(%rip), %ecx # place op2 in eax
		movl $CONST, %edx # place CONST in edx
		subl %eax, %edx # perform (CONST - op1)
		movl $CONST, %eax # place CONST in eax
		subl %ecx, %eax # (CONST - op2)
		addl %edx, %eax # (CONST - op1) + (CONST - op2)
		movl $CONST, %edx # place CONST in edx
		addl %eax, %edx # (CONST - op1) + (CONST - op2) + CONST
		movsxl %edx, %rax # transform the integer (word) in 32-bits into a long (quad) in 64-bits
		ret
