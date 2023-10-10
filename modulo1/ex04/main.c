#include <stdio.h>
#include "ex4.h"

int main() {
	
	int source[] = {1, 2, 3, 4, 5};
    int destination[5];

    int n = sizeof(source) / sizeof(source[0]);

    
    copy_vec(source, n, destination);

    
    printf("Copied elements in destination array:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", destination[i]);
    }
    printf("\n");

    return 0;
}







