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

