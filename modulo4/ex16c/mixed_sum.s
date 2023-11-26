.section .text
.global mixed_sum


	# rdi = long a
	# rsi = long b
	# rdx = char pos
	
	
mixed_sum:
	pushq %rbp
	movq %rsp,%rbp
	
	subq $24,%rsp
	
	movl %edi,-8(%rbp)			# Guardar a
	movl %esi,-16(%rbp)			# Guardar b
	
	pushq %rdx
	call join_bits
	popq %rdx
	
	movl %eax, -24(%rbp)
	
	movl -8(%rbp),%esi			# Preparar o chamamento da função
	movl -16(%rbp),%edi
	 
	call join_bits
	
	addl -24(%rbp),%eax
	
	movslq %eax,%rax
	
	movq %rbp,%rsp
	popq %rbp
ret
