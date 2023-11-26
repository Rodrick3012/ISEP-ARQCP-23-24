#include <stdio.h>
#include "asm.h"

int main(){
    long input_w = 10; 

    int result = count_bits_zero(input_w);

    printf("Result: %d\n", result);

    return 0;
}
