.section .data
.global i
.global j
.global h

.section .text
.global f4

f4:
    movl i(%rip), %eax
    addl j(%rip), %eax
    cmpl $10, %eax
    jg notGreater
    movl i(%rip), %eax
    imull $4, %eax
    jmp end

notGreater:
    movl j(%rip), %eax
    imull %eax, %eax
    cltd
    movl $3, %ecx
    idivl %ecx
    jmp end

end:
    movl %eax, h(%rip)
    ret
