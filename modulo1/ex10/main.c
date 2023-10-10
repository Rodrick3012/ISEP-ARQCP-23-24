#include <stdio.h>
#include "ex10.h"

int main() {
	
	char text[] = "Boas chamo-me Mário";
    char character = 'o';
    
    char *result = where_is(text, character);
    
    if (result != NULL) {
        printf("Found character '%c' at address: %p\n", character, (void*)result);
    } else {
        printf("Character '%c' not found in the string.\n", character);
    }
    
    return 0;
}
