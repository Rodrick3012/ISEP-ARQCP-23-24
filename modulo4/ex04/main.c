#include <stdio.h>
#include "asm.h"

int main(){
    int n1 = 3;
    int n2 = 5;
    int n3=0;
    int* ptrsub=&n3;

    int result = sum_sub(n1,n2,ptrsub);

    printf("Result: %d\n", result);
   

    return 0;
}
