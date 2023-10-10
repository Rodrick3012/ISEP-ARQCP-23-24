#include <stdio.h>
#include "get_array_statistics.h"

int main() {
	int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int min;
	int max;
	float avg;
	get_array_statistics(arr, 10, &min, &max, &avg);
	
	printf("Min: %d\n", min);
	printf("Max: %d\n", max);
	printf("Average: %f\n", avg);
	
	return 0;
}
