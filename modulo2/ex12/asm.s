.section .data


	
	.global A, B	#make them global

	
	
.section .text
	.global isMultiple # char isMultiple()
	isMultiple:
		movq A(%rip), %rax #place A in eax #dividend rax
		cqto	#sign-extend double word (long) in %eax to quad word in %rax
		movq B(%rip), %rcx  		# divisor : rcx
		cmp $0, %rcx	# compare 0 with B, if equal jump to zero condition
		je zero
		idivq % rcx  ## divides % rdx :% rax by % rcx ( remainder in %rdx , quotient in % rax )
		
		cmpq $0, %rdx
		jne zero
		movq $1, %rax
		jmp end
		
	zero:
		movq $0, %rax
		
		
	end:
		ret
	
		
		
		
		
		
		
		
		ret
