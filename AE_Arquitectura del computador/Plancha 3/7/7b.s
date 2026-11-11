.text
.global main
main:
    movq $0xf100000000000000 , %rax
    movq $0, %rbx
    rclq $1, %rax
    adcq $0, %rbx
    clc
    rclq $1, %rax
    adcq $0, %rbx
    clc
    rclq $1, %rax
    adcq $0, %rbx
    clc
    rclq $1, %rax
    adcq $0, %rbx
    clc
    rclq $1, %rax
    adcq $0, %rbx
    clc
    ret
