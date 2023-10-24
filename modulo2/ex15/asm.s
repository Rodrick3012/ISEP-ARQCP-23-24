.section .data


	
	.global A, B, C, D	#make them global

	
	
.section .text
	.global compute # int compute()
	compute:
		movl A(%rip), %eax #place A in eax
		imull B(%rip), %eax # (A * B)
		movl A(%rip), %ecx #place A in ecx
		imull C(%rip), %ecx # (C * A)
		subl %ecx, %eax	# eax- ecx.Result in eax
		cltd  	#sign-extend double word (long) in %eax to quad word in %edx : %eax
		movl D(%rip), %ecx 	#place D in ecx(divisor)
		idivl % ecx	# divides % edx :% eax by % ecx ( remainder in %edx , quotient in % eax )		
		
		
		ret
