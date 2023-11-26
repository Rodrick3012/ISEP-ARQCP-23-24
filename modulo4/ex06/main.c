#include <stdio.h>
#include "asm.h"

int main(){
    char c1 = 'a';
    char c2 = 'a';
    char* a= &c1;
    char* b=&c2;

    int result = test_different(a,b);

    printf("Result: %d\n", result);
   

    return 0;
}
