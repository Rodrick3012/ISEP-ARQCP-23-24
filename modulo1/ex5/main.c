#include <stdio.h>
#include "sum_even.h"

int main() {
	int arr[] = {1, 2, 3, 4, 5 , 6, 7, 8, 9, 10};
	int result = sum_even(arr, 10);
	printf("%d\n", result);
	return 0;
}

