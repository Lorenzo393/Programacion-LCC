.global main
main:
	movb $0xFF, %al
	ret
# salida es 255 unsigned pero -1 signed
