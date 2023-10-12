#include <stdio.h>
#include "sort_without_reps.h"

int main() {
    short src[] = {2, 0, 1};
    short dest[3];
    short *ptr_src = src;
    short *ptr_dest = dest;
    int num_unique = sort_without_reps(ptr_src, 3, ptr_dest);
    int i;
    for(i = 0; i < 3; i++){
		printf("%d ", *(ptr_dest+i));
	}
	printf("\n");
    printf("%d\n", num_unique);
    return 0;
}

