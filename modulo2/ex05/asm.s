.section .data
	.global s1

.section .text
	.global swapBytes
	
swapBytes:
	movw s1(%rip), %ax # set s1 into the register axm
	movb %al, %cl # move the higher byte of ax to a register dl
	movb %ah, %al # move the lower byte of ax to a register dh
	movb %cl, %ah # move the dl to the higher byte of ax
	movswl %ax, %eax
	ret
	
	
