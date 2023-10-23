.section .data


	
	.global A, B	#make them global

	
	
.section .text
	.global sum3ints # char isMultiple()
	isMultiple:
		movq A(%rip), %rax #place A in eax #dividend rax
		cltq	#sign-extend double word (long) in %eax to quad word in %rax
		movq B(%rip), %rcx  		# divisor : rcx
		idivq % ecx  ## divides % rdx :% rax by % rcx ( remainder in %rdx , quotient in % rax )
		movq %rdx, %rax
		
		
		
		
		ret
