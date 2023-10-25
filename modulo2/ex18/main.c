#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

int n;

int main(void) {
	
	printf("Valor n:");
	scanf("%d",&n);
	int res = sigma();
	printf("Resultado: %d\n", res);
	return 0;
}
