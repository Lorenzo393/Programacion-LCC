.global main
main:
	movb $0xFE, %al
	movb $-1, %bl
	addb %bl, %al
	incb %bl
	ret
# la salida es 253 unsigned pero -2 signed
