.section .data


	
	.global A, B	#make them global

	
	
.section .text
	.global isMultiple # char isMultiple()
	isMultiple:
		movq A(%rip), %rax #place A in eax #dividend rax
		cltq	#sign-extend double word (long) in %eax to quad word in %rax
		movq B(%rip), %rcx  		# divisor : rcx
		idivq % rcx  ## divides % rdx :% rax by % rcx ( remainder in %rdx , quotient in % rax )
		
		cmpq $0, %rdx
		je jmp_rdx_is_equal
		movq $0, %rax
		jmp end
		
	jmp_rdx_is_equal :	
		movq $1, %rax
		
	end:
		ret
	
		
		
		
		
		
		
		
		ret
