.section .data
	.global num
.section .text
	.global steps
	steps:
		movq num(%rip), %rax # set num in register rax
		jmp a # jump to step a
	a:
		cqto # extends register rax to register rdx, necessary to make the division
		movq $3, %rcx # set value 3 in register ecx
		idivq %rcx # "Divides by 3"
		jmp b # jump to step b
	b:
		addq $6, %rax # "Adds 6"
		jmp c # jump to step c
	c:
		movq $3, %rcx # set value 3 in register rcx
		mulq %rcx # "Multiplies by 3"
		jmp d # jump to step d
	d:
		addq $12, %rax # "Adds 12"
		jmp e # jump to step e
	e:
		movq num(%rip), %rcx # set num in register rcx
		subq %rcx, %rax # "Subtracts num"
		jmp f # jump to step f
	f:
		subq $4, %rax # "Subtracts 4"
		ret
