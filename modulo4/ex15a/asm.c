#include <stdio.h>

long reset_bits(long a, char left, char right) {
    if (left < 0 || right < 0 || left >= 64 || right >= 64 || left > right) {
        return a;
    }
	
	
	long mask = (unsigned)(0xFFFFFFFF << left) & (unsigned)(0xFFFFFFFF << right);
    return a & mask;
}

