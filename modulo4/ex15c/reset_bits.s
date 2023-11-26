.section .text
	.global reset_bits
	
	reset_bits:
		movq $0, %rax
		movq $0, %rcx
		cmpb %sil, %dl # compares the left with the right
		jg exit # if right is greater than left, ends the function
		movb %dl, %cl
		
	reset_bits_loop:
		cmpb %sil, %cl # compares right with the left
		jg exit # if right is greater than left, ends the function
		movq $1, %r8 # set the value 0x00000001 in register r8
		shlq %rcx, %r8 # shift-logic the byte to the right of the right
		andq %rdi, %r8 # create the mask : right of right & left of left
		orq %r8, %rax # use the mask in rax
		incq %rcx # increments right counter
		jmp reset_bits_loop
	
	exit:
		ret
