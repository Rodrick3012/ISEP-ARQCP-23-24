#include <stdio.h>

void frequencies(float *grades, int n, int* freq){
	int i;
	for(i = 0; i < n; i++){
		int integerPart = (int) *(grades + i);
		freq[integerPart]++;
	}
}

int main()
{
	float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
	int freq[21] = {0};
	frequencies(grades, 11, freq);
	for(int i = 0; i <= 20; i++){
		printf("%d\n", freq[i]);
	}
	return 0;
}

