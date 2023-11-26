.section .text
	.global vec_greater12
	
vec_greater12:
	movq $0, %rax	#clean return reg
	movl %esi, %ecx	#length in ecx
	movl $0, %edx	#cleans increment var
	
loop:	
	cmpl %edx, %ecx #checks if int vec ended
	je end
	
	cmpl $12, (%rdi)	#checks if element is greate rthen 12
	jg count
	
	
	incq %rdi	#next ĩnt in vec
	incl %edx	#increments vec counter legth
	
	jmp loop


count:
	incl %eax	#eax++
	incq %rdi	#next ĩnt in vec
	incl %edx	#increments vec counter legth
	jmp loop
	
	
end:
	ret
	
 
	
