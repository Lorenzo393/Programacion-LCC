.text
.global main
main:
    movq $0xffffffff00000000, %rax
    rolq $32, %rax
    ret
