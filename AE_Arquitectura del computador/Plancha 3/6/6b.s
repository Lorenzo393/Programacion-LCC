.text
.global main
main:
    movl $1, %eax
    movl $1, %ebx
    movl $0, %ecx
    sall $31, %eax
    sall $15, %ebx
    orl %eax, %ecx
    orl %ebx, %ecx
    ret
