section .data 
    hello db "Hello World"
    hello_len equ $ - hello

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov dx, hello_len
int 0x80

mov eax, 1
xor ebx, ebx
int 0x80

