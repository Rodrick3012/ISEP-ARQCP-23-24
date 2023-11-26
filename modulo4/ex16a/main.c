#include <stdio.h>
#include "asm.h"

int main(){
    long num_a = 0; // Example value for 'a'
    long num_b = -1; // Example value for 'b'
    char position = 63; // Example position

    long result = join_bits(num_a, num_b, position);

    printf("Result: %lx\n", result);

    return 0;
}
