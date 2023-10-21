.section .data
	.global length1
	.global length2
	.global height
.section .text
	.global getArea
	getArea:
		movw length1(%rip), %ax # set length1 in register ax
		addw length2(%rip), %ax # length1 + length2
		movw height(%rip), %cx # set height in register cx
		mulw %cx # (length1 + length2) * height
		movw $2, %cx # set value 2 in register cx
		divw %cx # (length1 + length2) * height / 2
		movswl %ax, %eax # move the short value to integer value
		ret
