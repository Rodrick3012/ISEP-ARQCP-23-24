.section .data

	
	.global op1
	.global op2

	
	
.section .text
	.global exchangeBytes # short exchangeBytes()
	exchangeBytes:
		movw op1(%rip), %ax #place op1 in ax
		movw op2(%rip), %cx	#place op2 in cx
		movb %ah, %cl
		movb %cl, %dh
		movb %ch, %ch
		addb %ch, %ch
		movb %ch, %ah
		movb %dh, %cl
		movb %cl, %ah
		#movb %ch, %al	#most significant byte of op2 place in least signifiucant byte of op2
		#addb %ah, %ah  #most significant byte of op1 multiplied by 2 and stored in the same place %ah
		#movb %cl, %al 	#least significant byte of op2 is now least significant byte of op1
		
		
		
		ret
