#include <stdio.h>
#include "ex6.h"


void capitalize2(char *str) {
    while (*str != '\0') {
        if (*str >= 'a' && *str <= 'z') {  
            *str = *str - ('a' - 'A');    // Convert to uppercase using ASCII values
        }
        str++;
    }
}
	 
