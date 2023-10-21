.section .data
	op1:
		.short 10
	op2:
		.short 1
.section .text
	.global verify_flags
	verify_flags:
		movw op1(%rip), %cx # sets variable op1 in cx register
		addw op2(%rip), %cx
		jc carry_flag
		jo overflow_flag
		movb $0, %al
		ret
	carry_flag:
		movb $1, %al # returns 1 if carry flag is activated
		ret
	overflow_flag:
		movb $1, %al # returns 1 if overflow flag is activated
		ret
