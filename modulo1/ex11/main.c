#include <stdio.h>

int sum_odd(int* p){
	int n = *p;
	int sum = 0;
	int i;
	for(i = i; i <= n; i++){
		if(*(p+i) % 2 != 0){
			sum += *(p+i);
		}
	}
	return sum;
}

int main() {
	int arr[] = {10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int result = sum_odd(arr);
	printf("%d\n", result);
	return 0;
}

