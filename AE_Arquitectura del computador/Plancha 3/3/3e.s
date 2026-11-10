.global main
main:
	movb $-91, %al
	movb $120, %bl
	subb %bl, %al
	ret
# El resultado unsigned es 45, el resultado signed es 45. CF = 0, OF = 1, SF = 0.
