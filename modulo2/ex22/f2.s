.section .data
.global i
.global j


.section .text
.global f2

f2:
movl i(%rip), %eax
cmpl %eax, j(%rip)
jng greater
movl j(%rip), %ecx
incl %ecx
imull %ecx, %eax
jmp end


greater:
decl %eax
jmp end

end:
movl %eax , h(%rip) 
 
ret
