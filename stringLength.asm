
section .data
    msg1 db "Enter the string : ",0
    msg2 db "String Length : %d",10,0
    fmt db "%99s",0

section .bss
    str1 resb 100

section .text
    global main
    extern printf,scanf,strlen

main:
    push rbp
    mov rbp,rsp

    ; Display message
    mov rdi,msg1
    xor eax,eax
    call printf

    ; Accept string
    mov rdi,fmt
    mov rsi,str1
    xor eax,eax
    call scanf

    ; Calculate length
    mov rdi,str1
    call strlen

    ; Display length
    mov esi,eax
    mov rdi,msg2
    xor eax,eax
    call printf

mov eax,0
leave
ret
