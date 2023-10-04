#include <stdio.h>

int sum_even(int *vec, int n){
	int sum = 0;
	int i;
	
	for(i = 0; i < n; i++){
		if(*(vec+i) % 2 == 0){
			sum += *(vec+i);
		}
	}
	
	return sum;
}

int main() {
	int arr[] = {1, 2, 3, 4, 5 , 6, 7, 8, 9, 10};
	int result = sum_even(arr, 10);
	printf("%d\n", result);
	return 0;
}

