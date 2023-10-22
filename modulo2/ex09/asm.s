.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
	.global sum_and_subtract
	sum_and_subtract:
		movl A(%rip), %ecx # place 32-bit A in register ecx
		movw C(%rip), %dx # place 16-bit C in register dx
		movswl %dx, %edx # move word (16-bit) to double word (32-bit)
		subl %ecx, %edx # C - A
		movw D(%rip), %ax # place 16-bit D in register ax
		movswl %ax, %eax # move word (16-bit) to double word (32-bit)
		addl %edx, %eax # C - A + D
		movb B(%rip), %cl # place 8-bit B in register cl (least significant byte)
		movsbl %cl, %ecx # move byte (8-bit) to double word (32-bit)
		subl %ecx, %eax # C - A + D - B
		movslq %eax, %rax # move double word (32-bit) to quad word (64-bit)
		ret
		
		
