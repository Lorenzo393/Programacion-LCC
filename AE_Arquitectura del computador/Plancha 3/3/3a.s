.global main
main:
	movb $100, %al
	movb $120, %bl
	addb %bl, %al
	ret
# El resultado unsigned es 220, el resultado signed es -36. OF = 1, CF = 0, SF = 1
