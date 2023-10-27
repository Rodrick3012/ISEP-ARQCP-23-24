.section .data



	
	.global num	 #make them global

	
	
.section .text
	.global check_num # ichar check_num()
	check_num:
	
		movw num(%rip), %ax  	#place num in ax
		cwtd
		movw $2, %cx		#place 2 in cx
		
		idivw %cx	# divides % dx :%ax by %cx ( remainder in %dx , quotient in % ax )
		movw num(%rip), %cx  	#place num in cx
		
		
		cmp $0, %dx	
		je par
	
	
		cmp $0, %cx		# compare 0 with num
		js imp_neg		# if signed, jump to imp_neg (impar, negativo)
	
		movb $4, %al	# set return value to 4
		jmp end
	
	par:
		cmp $0, %cx		# compare 0 with num
		js par_neg		# if signed, jump to par_neg (par, negativo)
		movb $3, %al	# set return value to 3
		jmp end
		

	imp_neg:
		movb $2, %al	# set return value to 2
		jmp end
		

	par_neg:
		movb $1, %al	# set return value to 1

		
	end:
	ret
	
