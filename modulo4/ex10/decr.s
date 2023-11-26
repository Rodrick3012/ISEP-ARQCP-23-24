.section .text
.global decr

decr:
	movswl (%rdi),%ecx
	movsbl %sil, %edx
	imull $2,%edx
	subl %edx,%ecx
	movl %ecx,%eax
	movw %cx, (%rdi)   
ret
	
