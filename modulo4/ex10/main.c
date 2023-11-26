#include <stdio.h>
#include "asm.h"

int main(){
    short input_w = 10; 

    int result = call_decr(input_w);

    printf("Result: %d\n", result);

    return 0;
}
