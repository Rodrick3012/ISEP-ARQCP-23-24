#include <stdio.h>
#include <string.h>
#include "student.h"

void fill_student(Student *s, char age, short number, char *name, char *address)
{
	s->age = age; // Fill the age in parameters in student structure
	s->number = number; // Fill the number in parameters in student structure
	strcpy(s->name, name); // Fill the name in paramers in student structure
	strcpy(s->address, address); // FIll the address in parameters in student structure
}

