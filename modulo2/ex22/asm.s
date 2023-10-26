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
		jmp end1
		
		true:
			subl j(%rip), %eax		#i-j
			addl $1, %eax		#i-j +1.result in eax
		
		end1:
			ret
	
	
	# ------------------------------------------------------------------
 
 
	f2:
		movl i(%rip), %eax	#place i in eax
		movl j(%rip), %ecx	#place j in ecx
		
		cmp j(%rip), %eax
		jg true
		incl %ecx		#j=j+1
		jmp end2
		
		true1:
			decl %eax
			
		end2:
			imull %ecx  #h=i*j.resuilt in eax  # % edx :% eax = %ecx * %eax
			ret
			
			
	# ------------------------------------------------------------------
	
	f3:
	
		movl i(%rip), %eax	#place i in eax
		movl j(%rip), %ecx	#place j in ecx
		
		cmp %ecx, %eax
		jge true3
		
		addl %eax, %ecx 	#h=i+j.result in ecx
		addl j(%rip), %eax	#i+j.result in eax
		addl $2, %eax	#i+j+2.result in eax  g
		jmp end3
		
		
		true3:
			imull i(%rip), %ecx 	#i*j.result in ecx  h
			incl %eax	#g=i+1
			
			
		end3:
			cltd
			idivl %ecx
			ret
			
			
			
			
		# ------------------------------------------------------------------
		
		f4:
			movl $0, %edx
			movl i, %eax
			
			addl j, %eax
			cmp $10, %eax
			jg condf4
	
			movl j, %eax
			cltd
			movl $3, %ecx
			idivl %ecx
	
			jmp end4
	
		condf4:
			movl i, %eax
			imull i, %eax		# i*i
			imull $4, %eax		#i*i*4
			
		end4:
			ret
			
	
			
			
		
		
			
		
	
