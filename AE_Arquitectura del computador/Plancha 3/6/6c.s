.text
.global main
main:
    movl $-1, %eax
    movl $0xffffff00, %ebx
    andl %ebx, %eax
    ret
