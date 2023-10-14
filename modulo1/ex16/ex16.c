#include <stdio.h>
#include "ex16.h"


void format_string(char *str){
	int capitalize_next = 1; // Inicialmente, a próxima letra deve ser maiúscula.

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ' ' || str[i] == '\t' || str[i] == '\n') {
            
            capitalize_next = 1;
        } else {
            if (capitalize_next== 1) {
                // Se a próxima letra deve ser maiúscula, faça a conversão.
                if (str[i] >= 'a' && str[i] <= 'z') {
                    str[i] = str[i] - ('a' - 'A');
                }
                capitalize_next = 0;
            } else {
                // Caso contrário, a letra deve ser minúscula.
                if (str[i] >= 'A' && str[i] <= 'Z') {
                    str[i] = str[i] + ('a' - 'A');
                }
            }
        }
    }
}
	
