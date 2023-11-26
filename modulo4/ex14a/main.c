#include <stdio.h>
#include "asm.h"

int main(){
    long input_w = 0;
    long* ptr=&input_w;
    char pos=0; 
    

    int result = set_bit(ptr,pos);

    printf("Result: %d\n", result);

    return 0;
}
