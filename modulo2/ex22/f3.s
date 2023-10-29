.section .data
.global i
.global j
.global h
.global g
.section .text
.global f3 

f3:
movl i(%rip), %eax
cmpl %eax, j(%rip)
jge equal
add j(%rip), %eax
movl %eax, h(%rip)
movl i(%rip), %eax
addl j(%rip), %eax
addl $2, %eax
movl %eax, g(%rip)
jmp end

equal :
imull j(%rip)
movl %eax, h(%rip)
addl i(%rip), %eax
incl %eax
movl %eax, g(%rip) 
jmp end

end:
movl g(%rip), %eax
cltd
idivl h(%rip)
movl %eax, r(%rip)
ret
