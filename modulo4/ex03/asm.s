.section .text
	.global greatest
	greatest:
		cmpw %di, %si # compares the first parameter to the second parameter
		jl second # if second parameter is less than first, jumps to second comparison
		jg third # if second parameter is greater than first, jumps to third comparison
	second:
		cmpw %di, %dx # compares the first parameter to the third parameter
		jg third # if third parameter is greater than first, jumps to third comparison
		movw %di, %ax # if third parameter is less than first, returns first parameter
		ret
	third:
		cmpw %si, %dx # compares the second parameter to the third parameter
		jg end # if third parameter is greater than second, jumps to end
		movw %si, %ax # if third paramer is less than second, returns second parameter
		ret
	end:
		movw %dx, %ax # returns third parameter
		ret
