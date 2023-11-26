.section .text
    .global changes

    # *ptr is in rdi

changes:
    movb 3(%rdi), %al        # Load the fourth byte into AL
    cmp $15, %al             # Compare it with 15
    jbe end_changes          # Jump to end if less than or equal to 15

    mov 2(%rdi), %al         # Load the third byte into AL
    xor $0xFF, %al           # Invert the third byte

    mov %al, 2(%rdi)         # Store the inverted byte back

end_changes:
    ret
