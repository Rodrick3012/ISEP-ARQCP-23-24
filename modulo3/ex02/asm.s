.section .text
	.global str_copy_roman
	str_copy_roman:
		movb (%rdi), %al
	my_loop:
		cmpb $0, %al
		je end
		cmpb $'u', %al
		jne not_replace
		movb $'v', %al
	not_replace:
		movb %al, (%rsi)
		incq %rdi
		incq %rsi
		movb (%rdi), %al
		jmp my_loop
	end:
		ret
