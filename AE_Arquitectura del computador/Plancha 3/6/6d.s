.text
.global main
main:
    movl $0xaa, %eax
    movl $0xaa, %ebx
    sall $24, %ebx
    orl %ebx, %eax
    ret
