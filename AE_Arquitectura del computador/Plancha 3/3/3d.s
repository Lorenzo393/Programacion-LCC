.global main
main:
	movb $120, %al
	movb $-56 ,%bl
	subb %bl, %al
	ret
# El resultado unsigned es 176, el resultado signed es -80. CF = 1, OF = 1, SF = 1.
