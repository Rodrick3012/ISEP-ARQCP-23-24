#include <stdio.h>

int set_bit (long *ptr, char pos){
	
    long mask = 1L << pos;

    if (*ptr & mask) {
        return 0; 
    } else {
		*ptr = *ptr | mask;
        return 1;
    }
}

