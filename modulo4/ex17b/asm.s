.section .text
	.global greater_date
	greater_date:
		movl %edi, %eax
		andl $0xFFFF0000, %eax # join only the year value in register eax, using a mask
		movl %esi, %ecx
		andl $0xFFFF0000, %ecx # join only the year value in register ecx, using a mask
		cmpl %ecx, %eax # compares the year of each date 
		jg end_date_1 # if year1 is bigger than year2, jump to return date1
		jl end_date_2 # if year2 is less than year2, jump to return date2
		
		# if years are equal, skip to the month comparator
		movl %edi, %eax
		andl $0x0000FF00, %eax # join only the month value in register ecx, using a mask
		movl %esi, %ecx
		andl $0x0000FF00, %ecx # join only the month value in register ecx, using a mask
		cmpl %ecx, %eax # compares the month of each date
		jg end_date_1 # if month1 is bigger than month2, jump to return date1
		jl end_date_2 # if month1 is less than month1, jump to return date2
		
		# if months are equals, skip to the day comparator
		movl %edi, %eax
		andl $0x000000FF, %eax # join only the day value in register eax, using a mask
		movl %esi, %ecx
		andl $0x000000FF, %ecx # join only the day value in register ecx, using a mask
		cmpl %ecx, %eax # compares the day of each date
		jg end_date_1 # if day1 is bigger than day2, jump to return date1
		jl end_date_2 # if day1 is less than day2, jump to return date2
		
		movl %edi, %eax # if date1 and date2 are equal, return one of the dates
		ret
	
	end_date_1:
		movl %edi, %eax # returns date1
		ret
		
	end_date_2:
		movl %esi, %eax # returns date2
		ret
