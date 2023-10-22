.section .data
	.global length1
	.global length2
	.global height
.section .text
	.global getArea
	getArea:
		movw length1(%rip), %ax # set length1 in register ax, necessary to do multiplication in future
		movw length2(%rip), %dx # set length2 in register dx
		movzwl %ax, %eax # move short value length1 to integer value, to avoid overflow flag
		movzwl %dx, %edx # move short value length2 to integer value, to avoid overflow flag
		addl %edx, %eax # length1 + length2
		movw height(%rip), %cx # set height in register cx
		movzwl %cx, %ecx # move short value height to integer value, to avoid overflow flag
		mull %ecx # (length1 + length2) * height
		movl $2, %ecx # set value 2 in register cx
		divl %ecx # (length1 + length2) * height / 2
		ret
