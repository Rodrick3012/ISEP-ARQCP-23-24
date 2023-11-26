#include <stdio.h>
#include "asm.h"

int main(){
    long input_w = 10;
    long* ptr=&input_w;
    char pos=3; 
    

    int result = set_bit(ptr,pos);

    printf("Result: %d\n", result);

    return 0;
}
