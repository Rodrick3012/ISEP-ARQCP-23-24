#include <stdio.h>
#include "get_array_statistics.h"

int main() {
	int arr[] = {0};
	int* ptr = arr;
	int min = 0;
	int max = 0;
	float avg = 0.0;
	get_array_statistics(ptr, 1, &min, &max, &avg);
	
	printf("%d\n", min);
	printf("%d\n", max);
	printf("%f\n", avg);
	
	return 0;
}
