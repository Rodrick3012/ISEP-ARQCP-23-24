#include <stdio.h>
#include "sum_odd.h"

int main() {
	int arr[] = {10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int *ptr = arr;
	int result = sum_odd(ptr);
	printf("%d\n", result);
	return 0;
}

