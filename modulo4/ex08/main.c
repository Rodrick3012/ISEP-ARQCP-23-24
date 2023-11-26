#include <stdio.h>
#include "asm.h"

int main(){
    int a=1;
    int b1=2;
    int c=3;
    
    int* b=&b1;

    int result = calc(a,b,c);

    printf("Result: %d\n", result);
   

    return 0;
}
