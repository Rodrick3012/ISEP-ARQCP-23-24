.section .data
	current:
		.byte 13
	desired:
		.byte 10
.section .text
	.global needed_time
	needed_time:
		movb current(%rip), %cl # set current temperature in register cl
		movb desired(%rip), %dl # set desired temperature in register dl
		movzbw %cl, %cx # move byte value of current (8-bit) to a short value (16-bit), to avoid overflow flag in the operations
		movzbw %dl, %dx # move byte value of desired (8-bit) to a short value (16-bit), to avoid overflow flag in the opeartions
		cmpw %dx, %cx # compare the current value with the desired value
		jl increase_temperature # jump to function increase_temperature if current temperature is less than the desired
		jg decrease_temperature # jump to function desired_temperature if current temperature is greater than the desired
		movw $0, %ax # if current = desired set the increase/decrease time to zero
		ret
	increase_temperature:
		subw %cx, %dx # desired - current = needed temperature to increase
		movw %dx, %ax # set the needed temperature to increase in a register needed to make the multiplication
		movw $3, %cx # set the one degree increase time in minutes in register cx
		mulw %cx # multiplies this increase time to gain the needed time to increase the temperature gained
		jmp convert_to_seconds # jump to function of converting the time to seconds
	decrease_temperature:
		subw %dx, %cx # current - desired = needed temperature to decrease
		movw %cx, %ax # set the needed temperature to decrease in a register needed to make the multiplication
		movw $4, %dx # set the one degree decrease time in minutes in register dx
		mulw %dx # multiplies this decrease time to gain the needed time to decrease the temperature gained
		jmp convert_to_seconds # jump to function of convrting the time to seconds
	convert_to_seconds:
		movw $60, %cx # set the quantity of seconds in a minute in register cx
		mulw %cx # multiplies this value to obtain the time to increase/decrease temperature in seconds
		ret
