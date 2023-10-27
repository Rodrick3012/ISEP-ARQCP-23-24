.section .data

	op3:
	.quad 0 #inicializei variavel op3
	op4:
	.quad 0 #inicializei variavel op4
	
	.global op1, op2, op3, op4
	
	
.section .text
	.global yet_another_sum  # long yet_another_sum()
	yet_another_sum:
		movq op4(%rip), %rax # place op1 in rax
		addq op3(%rip), %rax 	# op3+op4. result in rax
		movl op2(%rip), %ecx	#place op2 in ecx
		subl op2(%rip), %ecx	#op2-op2.result in ecx
		addl op1(%rip), %ecx	#ecx+op1.result in ecx
		movslq %ecx, %rcx	#sign extend ecx to quad
		subq %rcx, %rax	#final result in rax
		
	
		
		ret
