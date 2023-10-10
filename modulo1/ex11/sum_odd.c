#include <stdio.h>

int sum_odd(int* p){
	int n = *p;
	int sum = 0;
	int i;
	for(i = 1; i <= n; i++){
		if(*(p+i) % 2 != 0){
			sum += *(p+i);
		}
	}
	return sum;
}

