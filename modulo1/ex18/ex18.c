#include <stdio.h>
#include "ex18.h"


// Variável global para armazenar o número de conjuntos determinados
int n_sets = 0;

void inc_nsets() {
    n_sets++;
}

void populate(unsigned char *vec, int num, unsigned char limit) {
    for (int i = 0; i < num; i++) {
        // Generate a random value between 0 and the specified limit (permite que esteja sempre dentor do limit)
        unsigned char random_value = (unsigned char)(rand() % (limit + 1));
        *vec = random_value;
        vec++;
    }
}


int check(unsigned char x, unsigned char y, unsigned char z) {
    return (x < y && y < z) ? 1 : 0; //retorna 1 se verdadeiro e 0 se falso
}


