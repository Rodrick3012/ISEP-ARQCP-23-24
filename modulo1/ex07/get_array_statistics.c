#include <stdio.h>

void get_array_statistics(int *vec, int n, int *min, int *max,float *avg){
	*min = *vec; // Initializes the minimum value in the first position of the array;
	*max = *vec; // Initializes the maximum value in the first position of the array;
	int i;
	int sum = 0;
	for(i = 0; i < n; i++){
		sum += *(vec+i); // Sum all numbers on the array
		if(*(vec+i) < *min){
			*min = *(vec+i); // Get the smaller number in the array
		}
		if(*(vec+i) > *max){
			*max = *(vec+i); // Get the bigger number in the array
		}
	}
	*avg = (float) sum / n; // Calculate the average of the array
}

