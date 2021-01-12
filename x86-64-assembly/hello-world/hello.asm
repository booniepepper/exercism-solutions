default rel

section .rodata
msg: db "Hello, World!", 0

section .text
global main
main:
    lea rax, [msg]
    ret

