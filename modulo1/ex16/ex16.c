#include <stdio.h>
#include "ex16.h"

void format_string(char *str) {
    int capitalize_next = 1; // Inicialmente, a próxima letra deve ser maiúscula.
    int output_index = 0;
    int in_word = 0; // Variável para rastrear se estamos dentro de uma palavra.

    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ' ' || str[i] == '\t' || str[i] == '\n') {
            // Se o caractere atual for espaço em branco, a próxima letra deve ser maiúscula.
            capitalize_next = 1;
            if (in_word) {
                str[output_index++] = ' '; // Mantem apenas um espaço entre palavras.
                in_word = 0; // Não estamos mais dentro de uma palavra.
            }
        } else {
            if (capitalize_next == 1) {
                // Se a próxima letra deve ser maiúscula, faz a conversão.
                if (str[i] >= 'a' && str[i] <= 'z') {
                    str[output_index] = str[i] - ('a' - 'A');
                } else {
                    str[output_index] = str[i];
                }
                capitalize_next = 0; // Próxima letra deve ser minúscula.
                in_word = 1; //  dentro de uma palavra.
            } else {
                // Caso contrário, a letra deve ser minúscula.
                if (str[i] >= 'A' && str[i] <= 'Z') {
                    str[output_index] = str[i] + ('a' - 'A');
                } else {
                    str[output_index] = str[i];
                }
                capitalize_next = 0; // Próxima letra deve ser minúscula.
                in_word = 1; // Estamos dentro de uma palavra.
            }
            output_index++;
        }
    }

    // Remove espaços em branco extras à direita.
    while (output_index > 0 && (str[output_index - 1] == ' ' || str[output_index - 1] == '\t' || str[output_index - 1] == '\n')) {
        output_index--;
    }

    // Adiciona um terminador de string no final da string formatada.
    str[output_index] = '\0';
}
