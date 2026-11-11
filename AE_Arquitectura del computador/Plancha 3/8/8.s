.text
.global main
main:
    movl $-1, %eax 
    # Solo para este tamaño el mov pone en 0 la parte alta del registro.
    movl $2, %ecx
    imull %ecx
    
    sal $32, %rdx
    orq %rdx, %rax

    xorq %rax, %rax
    movw $-1, %ax
    movw $2, %cx
    mulw %cx
    
    movzwl %ax, %eax
    movzwl %dx, %edx
    shll $16, %edx
    orl %edx, %eax
    
    ret
