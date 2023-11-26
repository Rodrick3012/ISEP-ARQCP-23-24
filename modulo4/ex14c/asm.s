.section .text
.global set_bit

set_bit:
    xorq %rax, %rax        # Clear RAX register (used for returning the result)
    movzbq %sil, %rdx      # Move the position to RDX
    movq (%rdi), %rax      # Load the long value from the address into RAX
    
    movq $1, %rcx          # Set RCX to 1 (used as a bitmask)
    
loop_shift:
	cmp $0,%rdx
	je  continue
    shlq %rcx         # Shift 1 to the left by the specified position
    decq %rdx
    jmp loop_shift
    
    
continue:
    testq %rcx, %rax       # Test if the bit is already set
    jnz bit_already_set    # If the bit is already set, jump to bit_already_set
    
    orq %rcx, (%rdi)       # Set the bit in the value at the address
    
    movq $1, %rax          # Set RAX to 1 (indicating the bit was not set)
    ret

bit_already_set:
    xorq %rax, %rax        # Clear RAX (bit was already set, return 0)
    ret
