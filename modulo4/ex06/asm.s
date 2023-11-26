.section .text
.global test_different

test_different:
	movl $1,%eax
	movw %si , %cx
	cmpw %di ,%cx
	je equals
	jmp return

equals:
	movl $0,%eax
	
return:
	ret
	
