#include <stdio.h>

int sum_even(int *vec, int n){
	int sum = 0;
	int i;
	
	for(i = 0; i < n; i++){
		if(*(vec+i) % 2 == 0){ // Verifiy that the number in array is even
			sum += *(vec+i); // Sum all even numbers in array
		}
	}
	
	return sum;
}

