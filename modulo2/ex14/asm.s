.section .data
	.global length1
	length1:
		.int 3
	.global length2
	length2:
		.int 5
	.global height
	height:
		.int 6
.section .text
	.global getArea
	getArea:
		movl length1(%rip), %eax # set length1 in register eax
		addl length2(%rip), %eax # length1 + length2
		movl height(%rip), %edx # set heigth in register edx
		mull %edx # (length1 + length2) * height
		movl $2, %ecx # set value 2 in register ecx
		divl %ecx # (length1 + length2) * height / 2
		ret
