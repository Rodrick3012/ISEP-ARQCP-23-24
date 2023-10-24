.section .data
	.global op1
	.global op2
.section .text
	.global verify_flags
	verify_flags:
		movw op1(%rip), %cx # sets variable op1 in cx register
		addw op2(%rip), %cx # adds op1 to op2
		jc carry_flag # jump to function carry_flag if carry flag is activated
		jo overflow_flag # jump to function overflow_flag is overflow flag is activated
		movb $0, %al # if not one of the two flags are activated, returns 0
		ret
	carry_flag:
		movb $1, %al # returns 1 if carry flag is activated
		ret
	overflow_flag:
		movb $1, %al # returns 1 if overflow flag is activated
		ret
