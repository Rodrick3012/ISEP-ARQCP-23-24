#include <stdio.h>
#include "asm.h"

int main(){
    long num_a = 300; // Example value for 'a'
    long num_b = 10; // Example value for 'b'
    char position = 3; // Example position

    long result = join_bits(num_a, num_b, position);

    printf("Result: %ld\n", result);

    return 0;
}
