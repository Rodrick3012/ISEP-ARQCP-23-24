.section .data



	
	.global i, j	 #make them global

	
	
.section .text
	.global f, f2, f3, f4	#make them all global
	
	f:
		movl i(%rip), %eax	#place i in eax
		
		cmp j(%rip), %eax
		je true
		addl j(%rip), %eax	#i+j.result in eax
		subl $1, %eax	#i+j-1.result in eax
		jmp end
		
		condf:
			subl j(%rip), %eax		#i-j
			addl $1, %eax		#i-j +1.result in eax
			jmp end
		
		
	
	
	# ------------------------------------------------------------------
 
 
	f2:
		movl i(%rip), %eax	#place i in eax
		movl j(%rip), %ecx	#place j in ecx
		
		cmp j(%rip), %eax
		jg condf2
		incl %ecx		#j=j+1
		imull i(%rip), %ecx 		#h=i*j.result in ecx
		movl %ecx, %eax	#place ecx in eax oin order to return
		jmp end
		
		condf2:
		
			decl %eax
			imull %ecx  #h=i*j.resuilt in eax  # % edx :% eax = %ecx * %eax
			jmp end
			
			
	# ------------------------------------------------------------------
	
	f3:
	
		movl i(%rip), %eax	#place i in eax

		
		cmp j(%rip), %eax
		jge condf3
		
		addl j, %eax
		addl $2, %eax
		movl j, %ecx
		addl i, %ecx
		cltd
		idivl %ecx
		jmp end
		
		
		
		condf3:
			imull i(%rip), %ecx 	#i*j.result in ecx  h
			incl %eax	#g=i+1
			cltd
			idivl %ecx
			jmp end
			
			
			
			
		# ------------------------------------------------------------------
		
		f4:
			movl $0, %edx
			movl i(%rip), %eax
			
			addl j(%rip), %eax
			cmp $10, %eax
			jl condf4
	
			movl j(%rip), %eax
			imull j(%rip), %eax		#j*j. result in eax
			cltd
			movl $3, %ecx
			idivl %ecx	#quotient in eax
	
			jmp end
	
		condf4:
			movl i, %eax
			imull i, %eax		# i*i
			imull $4, %eax		#i*i*4
			jmp end
			
			
			
		end:
			ret
			
	
			
			
		
		
			
		
	
