.section .text
.global count_bits_zero

count_bits_zero:

	pushq %rbp					#prologue
		movq %rsp, %rbp
		subq $8, %rsp
		movl $0, -8(%rbp)
		movq $32, %rcx
		loop_bits:	
			pushq %rdi
			andl $1, %edi
			cmpl $0, %edi
			jne isn_zero
			incl -8(%rbp)
		
		isn_zero:
			popq %rdi
			sarl %edi
			loop loop_bits
		
		end:
			popq %rdi
			movl -8(%rbp), %eax
					
			movq %rbp, %rsp
			popq %rbp					#epilogue
			ret
