#include <stdio.h>

long reset_bits(long a, char left, char right) {
    if (left < 0 || right < 0 || left >= 64 || right >= 64 || left > right) {
        // Invalid input parameters
        return a;
    }

    long mask = (~0UL << (63 - right)) ^ (~0UL << left); // create the mask using the left and right
    return a & mask;
}

