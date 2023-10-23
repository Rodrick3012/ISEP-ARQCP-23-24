.section .data


	
	.global op1, op2, op3	#make them global

	
	
.section .text
	.global sum3ints # long long sum3ints()
	sum3ints:
		movl op1(%rip), %eax #place op1 in eax
		movslq %eax, %rax #sign extend to quad word 
		movl op2(%rip), %ecx	#place op2 in ecx
		movslq %ecx, %rcx #sign extend to quad word
		addq %rcx, %rax  #sum op1 +op2. Result save in rax
		movl op3(%rip), %ecx #place op3 in ecx
		movslq %ecx, %rcx #sign extend to quad word
		addq %rcx, %rax 	#sum (op1 +op2) + op3. Result save in rax
		
		
		
		
		
		
		ret
