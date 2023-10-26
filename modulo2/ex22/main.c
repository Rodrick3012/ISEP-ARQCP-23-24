#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

short num;
int i, j, res;

int main(void) {
	
	printf("Valor i:");
	scanf("%d",&i);
	printf("Valor j:");
	scanf("%d",&j);
	
	
    res =f();
    printf("Resultado f %d\n", res);
    res =f2();
    printf("Resultado f2 %d\n", res);
    res =f3();
    printf("Resultado f3 %d\n", res);
    res =f4();
    printf("Resultado f4 %d\n", res);
    
	return 0;
}




