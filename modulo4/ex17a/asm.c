#include <stdio.h>

unsigned int greater_date(unsigned int date1, unsigned int date2){
	
	unsigned int year_mask = 0xFFFF0000; // Use a mask to join only the year value
	unsigned int year1 = date1 & year_mask; 
	unsigned int year2 = date2 & year_mask;
	if(year1 > year2){
		return date1;
	} else {
		if(year1 < year2){
			return date2;
		}
	}
	
	unsigned int month_mask = 0x0000FF00; // Use a mask to join only the month value
	unsigned int month1 = date1 & month_mask;
	unsigned int month2 = date2 & month_mask;
	if(month1 > month2){
		return date1;
	} else {
		if(month1 < month2){
			return date2;
		}
	}
	
	unsigned int day_mask = 0x000000FF; // Use a mask to join only the day value
	unsigned int day1 = date1 & day_mask;
	unsigned int day2 = date2 & day_mask;
	if(day1 > day2){
		return date1;
	} else {
		if(day1 < day2) {
			return date2;
		}
	}
	
	return date1; // if date1 are equal than date2, return one of the dates
}
