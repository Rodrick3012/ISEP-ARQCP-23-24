.section .data
	.global s1
.section .text
	.global swapBytes
	
swapBytes:
	movw s1(%rip), %ax # set s1 into the register ax
	movb %ah, %dl # move the higher byte of ax to a register dl
	movb %al, %dh # move the lower byte of ax to a register dh
	movb %dl, %ah # move the dl to the higher byte of ax
	movb %dh, %al # move the dh to the lower byte of ax
	ret
	
	
