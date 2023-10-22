.section .data
	.global code
	.global currentSalary
.section .text
	.global new_salary
	new_salary:
		movw code(%rip), %cx # set code in register cx
		movw currentSalary(%rip), %ax # set code in register ax
		movzwl %ax, %eax # move short value currentSalary (16-bit) to int (32-bit), to avoid overflow flag
		cmpw $10, %cx # compare 10 to the code
		je new_manager_salary # jump to manager if code equals 10
		cmpw $11, %cx # compare 11 to the code
		je new_engineer_salary # jump to engineer if code equals 11
		cmpw $12, %cx # compare 12 to the code
		je new_technican_salary # jump to engineer if code equals 12
		addl $250, %eax # if code is not one of the values, adds 250 the salary
		ret
	new_manager_salary:
		addl $500, %eax # adds 500 to the salary
		ret
	new_engineer_salary:
		addl $400, %eax # adds 400 to the salary
		ret
	new_technican_salary:
		addl $300, %eax # adds 300 to the salary
		ret
