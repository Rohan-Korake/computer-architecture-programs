section .data 
    msg1 db "Enter your name : ",0
    msg2 db "Hello, %s",10,0
    fmt db "%s",0

section .bss
    name resq 100

section .text
    global main
    extern printf,scanf

main:
    push rbp
    mov rbp,rsp

    mov rdi,msg1
    xor eax,eax
    call printf

    mov rdi,fmt
    mov rsi,name
    xor eax,eax
    call scanf

    mov rdi,msg2
    mov rsi,name
    xor eax,eax
    call printf

mov eax,0
leave
ret