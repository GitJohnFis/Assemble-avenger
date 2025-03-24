section .data
hello: db "Hello World!", 10  ; Define the string
helloLen: equ $-hello         ; Calculate the length of the string

section .text
global _start                 ; Declare the program entry point

_start:                       ; Entry point starts here
    mov rax, 1                ; syscall: sys_write
    mov rdi, 1                ; stdout file descriptor
    mov rsi, hello            ; Address of the string
    mov rdx, helloLen         ; Length of the string
    syscall                   ; Call the kernel

    mov rax, 60               ; syscall: sys_exit
    mov rdi, 0                ; Exit code 0
    syscall                   ; Call the kernel
