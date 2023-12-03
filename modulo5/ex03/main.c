#include <stdio.h>
#include "asm.h"
	
int main(){
	Student students[5]; // Create the array with the structure type
	
	// Fill the data of student structure with values in parameters
	fill_student(&students[0], 'D', 3, "Manuel Piçarro", "Rua da Constituição 123");
	fill_student(&students[1], 'E', 12, "Joaquim Dias", "Avenida 25 de Abril 12");
	fill_student(&students[2], 'H', 23, "José Silva", "Rua João das Regras 10");
	fill_student(&students[3], 'P', 45, "Kiara Souza", "Largo 24 de Agosto 23");
	fill_student(&students[4], 'A', 21, "Mariana Pinheiro", "Rua Júlio Dinis 2340");
	
	int i;
	for(i = 0; i < 5; i++){
		printf("Student nº %d\n", i+1);
		printf("Number: %hd\n", students[i].number);
		printf("Age: %c\n", students[i].age);
		printf("Name: %s\n", students[i].name);
		printf("Address: %s\n\n", students[i].address);
	}
	
	return 0;
}

