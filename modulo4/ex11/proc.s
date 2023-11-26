.section .text
	.global proc
	
	proc:
		pushq %rbp
		movq %rsp, %rbp
		
		
		addl %edx, (%rsi) # *p1 = x1 + x2
		subl %edi, (%rcx) # *p2 = x2 - x1
		addw %dx, (%r9)	# *p3 = x3 + x2
		movq 24(%rsp), %r10 # move *p4 to a register
		movb $3, %r11b
		movb (%r10), %al
		imulb %r11b	# do x4 * 3
		movb %al, (%r10) # return the value to the p4
		
		
		movq %rbp, %rsp
		popq %rbp
		ret
