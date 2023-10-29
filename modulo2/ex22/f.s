.section .data
.global i
.global j

.section .text
.global f 

f:
movl i(%rip), %eax
cmpl %eax, j(%rip)
je equal
addl j(%rip), %eax
decl %eax
jmp end

equal :
subl j(%rip), %eax
incl %eax
jmp end





end:
movl %eax , h(%rip) 
 
ret
