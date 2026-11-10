.global main
main:
	movq $0x1122334455667788, %rax
	addq $0x11223344, %rax
	ret
# El error dice "no coincide el tipo de operando para add". Lo que
# sucede es que el tamaño maximo de bits que puede tener una operacion
# con operador inmediato es de 32 bits a excepcion de mov que puede
# copiar hasta un valor de 64 bits
