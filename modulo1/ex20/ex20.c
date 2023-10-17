#include <stdio.h>
#include "ex20.h"


void compress(int* vec_ints, int n, long* vec_longs) {
    for (int i = 0; i < n; i += 2) {
        // Combina dois inteiros consecutivos em um único long
        long compressed_value = ((long)vec_ints[i + 1] << 32) | (long)vec_ints[i];
        vec_longs[i / 2] = compressed_value;
    }
}
	

