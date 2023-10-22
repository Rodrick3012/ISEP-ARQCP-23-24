.section .data

	
	.global op1
	.global op2

	
	
.section .text
	.global crossSubBytes # short crossSubBytes()
	crossSubBytes:
		movw op1(%rip), %ax #place op1 in ax
		movw op2(%rip), %cx	#place op2 in cx
		subb %cl, %ah 	# most sing byte in op1 - least sig byte in op2.Result stored in %ah
		subb %al, %ch 	#most sing byte in op2 - least sig byte in op1.Result stored in %ch
		movb %ch, %al	#put op2-op1 in al in order to form the short we want to return
		
		
		
		
		ret
