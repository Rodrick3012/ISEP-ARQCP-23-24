.section .text
	.global vec_avg
	vec_avg:
	
		
		movw %si, %cx		#move to divisor to make division
		push rcx		#stores rcx in stack
		call vec_sum		#calls vec_sum func
		pop rcx		#makes br come back
		movswl %cx, %ecx 	#makes cx long
		cltd	# sign-extended register in eax to eax:edx
		idivl %ecx		#edx:eax/ecx
		
	
		ret
