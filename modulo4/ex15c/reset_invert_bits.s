.section .text
	.global reset_invert_bits
	reset_invert_bits:
		call reset_bits
		notq %rax # inverts the scenary of reset_bits
		ret
