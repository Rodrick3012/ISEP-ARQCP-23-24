.section .data



	A:
		.int 3
		
	B:
		.int 4


	
	.global A, B, n	 #make them global

	
	
.section .text
	.global sigma # int sigma()
	sigma:
	
		movl n(%rip), %edi	#place n in %edi
		movl $0, %esi	#makes esi 0 so we can sum on it later
		
		
	my_loop:
		
		cmpl $1 , % edi
		jl end_my_loop
			
		imull %edi, %edi	#i^2
		movl A(%rip), %eax	#place A in eax
		imull A(%rip), %eax
		imull A(%rip), %eax	#A^3
		imull %edi, %eax		#i^2 * A^3 placed in eax
		cltd	# converts the signed long in % eax to the signed double long in % edx :% eax
		movl B(%rip), %ecx	#divisor
		idivl  %ecx 	# divides % edx :% eax by % ecx ( remainder in %edx , quotient in % eax )
		addl %eax, %esi	#places eax in esi	
		decl %edi
		
		jmp my_loop
		
		
	end_my_loop:
		movl %esi, %eax		#place result in eax in order to return
		ret
		
		
		
		
		
	
