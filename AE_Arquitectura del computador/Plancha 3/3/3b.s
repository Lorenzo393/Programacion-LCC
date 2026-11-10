.global main
main:
	movb $-63, %al
	movb $-56, %bl
	addb %bl, %al
	ret
# El resultado unsigned es 137, el resultado signed es -119. OF = 0, CF = 1, SF = 1.
