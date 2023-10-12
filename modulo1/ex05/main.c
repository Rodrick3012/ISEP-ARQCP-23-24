#include <stdio.h>
#include "sum_even.h"

int main() {
	int arr[] = {1, 2, 3, 4, 5 , 6, 7, 8, 9, 10};
	int* ptr = arr;
	int result = sum_even(ptr, 10);
	printf("%d\n", result);
	return 0;
}

