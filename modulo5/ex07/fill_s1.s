.section .data
	.equ S1_SIZE, 12
	.equ I_OFFSET, 0
	.equ C_OFFSET, 4
	.equ D_OFFSET, 5
	.equ J_OFFSET, 8
.section .text
	.global fill_s1
	fill_s1:
		movl %esi, I_OFFSET(%rdi)	# set the I element in s1 structure using his offset
		movb %dl, C_OFFSET(%rdi)	# set the C element in s1 structure using his offset
		movl %ecx, J_OFFSET(%rdi)	# set the J element in s1 structure using his offset
		movb %r8b, D_OFFSET(%rdi)	# set the D element in s1 structure using his offset
		ret
