#include <stdio.h>
#include "asm.h"

int main(){

    long a = 0xABCD; // Example values
    long b = 0x1234;
    char pos = 10;

    long result = mixed_sum(a, b, pos);
    printf("Result: 0x%lx\n", result);

    return 0;

}
