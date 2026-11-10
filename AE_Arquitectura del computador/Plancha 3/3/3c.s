.global main
main:
	movb $-63, %al
	movb $-91, %bl
	addb %bl, %al
	ret
# El resultado usigned es 102, el resultado signed es 102. CF = 1, OF = 1, SF = 0.
