#include <stdio.h>
#include "asm.h"

int main(){
    int arr[]={-1,-1,0,-1,-1};
	int* ptr= arr;
	
    int result = vec_count_bits_zero(ptr,5);

    printf("Result: %d\n", result);

    return 0;
}
