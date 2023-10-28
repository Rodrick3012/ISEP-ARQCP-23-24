.section .data

	op3:
	.quad 1 #inicializei variavel op3
	op4:
	.quad 1 #inicializei variavel op4
	
	.global op1, op2, op3, op4
	
	
.section .text
	.global yet_another_sum  # long yet_another_sum()
	yet_another_sum:
		movq op4(%rip), %rax # place op1 in rax
		addq op3(%rip), %rax 	# op3+op4. result in rax
		movl op2(%rip), %ecx	#place op2 in ecx
		movslq %ecx, %rcx
		subq %rcx, %rax
		movl op2(%rip), %ecx
		movslq %ecx, %rcx
		subq %rcx, %rax
		movl op1(%rip), %ecx
		movslq %ecx, %rcx
		addq %rcx, %rax
		subq op4(%rip), %rax	#final result in rax
		
	
		
		ret
