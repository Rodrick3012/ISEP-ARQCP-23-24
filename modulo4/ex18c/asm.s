.section .text
	.global changes_vec
	.global changes

changes:
    movb 3(%rdi), %al        # Load the fourth byte into AL
    cmp $15, %al             # Compare it with 15
    jbe end_changes          # Jump to end if less than or equal to 15

    mov 2(%rdi), %al         # Load the third byte into AL
    xor $0xFF, %al           # Invert the third byte

    mov %al, 2(%rdi)         # Store the inverted byte back

end_changes:
    ret


changes_vec:
    mov %esi, %ecx           # Set ECX to the number of integers in the vector
    cmpl $0, %ecx          # Check if the number of integers is zero
    je end_changes_vec       # Jump to end if zero

loop_changes:
    call changes             # Call the changes function for the current integer
    add $4, %rdi             # Move to the next integer in the vector
    loop loop_changes        # Loop until all integers are processed

end_changes_vec:
    ret
