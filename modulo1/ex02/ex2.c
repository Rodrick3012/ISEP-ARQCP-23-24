#include <stdio.h>
#include "ex2.h"

void functionEx2(){
	double doubleVar = 2.6;
    int intVar = 5;
    char charVar = 'L';

    
    double* doublePtr = &doubleVar;
    int* intPtr = &intVar;
    char* charPtr = &charVar;

    
    printf("Double variable:\n");
    printf("Address: %p\n", doublePtr); 
    printf("Value: %lf\n", *doublePtr);
    printf("Memory Size (bytes): %lu\n", sizeof(doubleVar));

    printf("\nInteger variable:\n");
    printf("Address: %p\n", (void*)intPtr);
    printf("Value: %d\n", *intPtr);
    printf("Memory Size (bytes): %lu\n", sizeof(intVar));

    printf("\nChar variable:\n");
    printf("Address: %p\n", (void*)charPtr);
    printf("Value: %c\n", *charPtr);
    printf("Memory Size (bytes): %lu\n", sizeof(charVar));
}
