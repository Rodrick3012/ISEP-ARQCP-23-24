#include <stdio.h>
#include <time.h> // Inclua a biblioteca time porque caso contrario o rand dara dsempre o mesmo conjunto de numeros
#include "ex18.h"

int main() {
	
	int array_size = 50;
    unsigned char limit = 20;

    unsigned char array[50];

    // Popula o array com valores aleatórios
    populate(array, array_size, limit);

    // Verifica os conjuntos no array( array_size-2 porque sao sets de 3 e chega a um ponto onde ja nao faz sentido porque ja nao ha 3 inteiros para verificar)
    for (int i = 0; i < array_size - 2; i++) {
        if (check(array[i], array[i + 1], array[i + 2]) == 1) {
            inc_nsets(); // Incrementa o contador de conjuntos
        }
    }

    // Imprime o número de conjuntos que satisfazem a condição
    printf("Número de conjuntos que satisfazem a condição: %d\n", n_sets);

    return 0;
}






