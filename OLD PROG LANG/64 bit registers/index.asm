
section .text            ;text section
global_start

_start:         ; start here

;block starting symbol
section .bss   ; variables

section .data   ;constants
hello: db "Hello World!", 10  ; string to print
helloLen: equ $-hello       ; length of string
;for define byte
section .text
   global      ; entry point for linker

_start:     ; start here
mov  rax,1  ; sys_write
mov  rdi,1  ;stdout
mov  rsi,hello  ; message to write
mov  rdx,helloLen  ; message length
syscall    ; call kernal

; end program
mov rax,60  ; sys_exit
mov rdi,0    ; error code 0 (success)
syscall     ; call kernal



;in terminal use_nasm -fe1f64 index.asm
;1d app.o -o app
;./app