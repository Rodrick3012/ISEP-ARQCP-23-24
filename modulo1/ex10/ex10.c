#include <stdio.h>
#include "ex10.h"

char* where_is(char *str,char c){
	while (*str != '\0') {
        if (*str == c) {
            return str;  // Found the character, return its address
        }
        str++;  // Move to the next character in the string
    }
    
    return NULL;  // Character not found, return NULL
}
