#include <stdio.h>
#include "swap.h"

int main()
{
	short vec1[] = {3, 5, 6, 9, 5, 5};
	short vec2[] = {8, 2, 1, 0, 2, 9};
	swap(vec1, vec2, 6);
	int i;
	for(i = 0; i < 6; i++){
		printf("%d ", vec1[i]);
	}
	printf("\n");
	int j;
	for(j = 0; j < 6; j++){
		printf("%d ", vec2[j]);
	}
	printf("\n");
	return 0;
}
