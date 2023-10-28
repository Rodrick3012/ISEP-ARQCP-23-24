.section .data


	
	.global A
	.global B
	.global C
	.global D

	
	
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
		cmpl $0, %ecx #compara ecx com zero, para evitar divisoes por 0
		je jump_is_equal   #pula para jump_is_equal se for igual a 0
		idivl %ecx	# divides % edx :% eax by % ecx ( remainder in %edx , quotient in % eax )	
		
		
	jump_is_equal:
		jmp end	
		
	end:
		ret
