.section .data

	op3:
	.quad 0 #inicializei variavel op3
	op4:
	.quad 0 #inicializei variavel op4
	
	.global op1, op2, op3, op4
	
	
.section .text
	.global yet_another_sum  # long yet_another_sum()
	yet_another_sum:
		movl op1(%rip), %ecx # place op1 in ecx
		movslq %ecx , %rcx # sign extend to quad word
		movl op2(%rip), %eax # place op2 in eax
		movslq %eax , %rax#sign extend to quad word
		movq op3(%rip), %rdx #place op3 in rdx
		movq op4(%rip), rsp #place op4 in rsp
		addq %rdx, %rsp # add rdx to rsp. Result is in rsp
		movq op4(%rip), rdx #place op4 in rdx
		subq %rdx, % rcx # op1-op4. Result in rcx
		subq %rax, %rsp # op3+op4-op2.result in rsp
		movsxd %rax, op2(%rip)	# movl op2(%rip), %eax  movslq %eax , %rax FAZ ESTES DOIS AO MESMO TEMPO
		subq %rax, %rsp 	# op3+op4-op2-op2.result in rsp
		addq %rsp, rcx 	#op3+op4-op2-op2+op1-op4.Result in rcx
		movq %rcx, %rax 	# place rcx in rax to return
		
		
		
		
		ret
