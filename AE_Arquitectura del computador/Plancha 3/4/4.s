.text
.global main
main:
	movq $-1, %rax
	movb $0, %al
	movw $0, %ax
	movl $0, %eax
	ret

# Valores de rax por pasos
# 0. 93824992235817
# 1. -1
# 2. -256
# 3. -65536
# 4. 0
# Lo que analizo es que al principio tiene basura en su registro, luego vale -1
# y despues se empiezan a poner en 0 subregistros de rax como al que es el primer 
# byte luego ax que son los primeros 2 bytes. Al copiar informacion en estos 
# subregistros el resto de los valores no se modifican, en cambio cuando copio el 0
# en el registro eax queda todo el registro en cero ya que este de manera predenterminada
# deja el resto de los bits en 0
