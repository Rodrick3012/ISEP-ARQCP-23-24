#include <stdio.h>

int count_bits_zero(long w){
	int count = 0;
    int numBits = 64;

    for (int i = 0; i < numBits; i++) {
        if ((w & 1) == 0) {
            count++;
        }
        w = w >> 1;
    }

    return count;
}

