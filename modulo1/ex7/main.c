#include <stdio.h>

void get_array_statistics(int *vec, int n, int *min, int *max,float *avg){
	*min = *vec;
	*max = *vec;
	int i;
	int sum = 0;
	for(i = 0; i < n; i++){
		sum += *(vec+i);
		if(*(vec+i) < *min){
			*min = *(vec+i);
		}
		if(*(vec+i) > *max){
			*max = *(vec+i);
		}
	}
	*avg = (float) sum / n;
}

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
