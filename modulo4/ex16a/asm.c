#include <stdio.h>

long join_bits(long a, long b, char pos) {
	
	
	long mask_A = (1L << (pos+1)) - 1;
	
	if (pos==63){mask_A = -1L;}

    long mask_B = ~mask_A;
    
    long aux_A = a & mask_A;
    long aux_B = b & mask_B;
	long result =aux_A | aux_B;

    return result;
}

