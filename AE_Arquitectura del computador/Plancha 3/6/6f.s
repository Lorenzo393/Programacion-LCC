.text
.global main
main:
    movl $1, %eax
    movl $-1, %ebx
    sal $8, %eax
    notl %eax
    and %ebx, %eax
    ret
