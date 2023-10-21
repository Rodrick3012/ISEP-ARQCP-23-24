.section .data
	.global length1
	.global length2
	.global height
.section .text
	.global getArea
	getArea:
		movw length1(%rip), %ax
		addw length2(%rip), %ax
		movw height(%rip), %cx
		mulw %cx
		movw $2, %cx
		divw %cx
		movswl %ax, %eax
		ret
