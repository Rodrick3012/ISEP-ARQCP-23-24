#include <stdio.h>

int array_size(char *string){ // check the size of the string
	int i = 0;
	while(*(string + i) != '\0'){
		i++;
	}
	return i;
}

int distance(char *a, char *b){
	int sizeA = array_size(a);
	int sizeB = array_size(b);
	
	if(sizeB != sizeA){ // if this strings have diffrent sizes, returns -1
		return -1;
	}
	
	int totalDiff = 0;
	for(int i = 0; i < sizeA; i++){
		if(*(a + i) != *(b + i)){ // compares the char in each string
				totalDiff++;
		}
	}
	return totalDiff;
}
