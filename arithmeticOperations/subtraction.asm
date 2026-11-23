
section .data
    msg1 db "Enter the first number : ",0
    msg2 db "Enter the second number : ",0
    msg3 db "Subtraction : %d",10,0
    fmt db "%d",0

section .bss
    num1 resd 1
    num2 resd 1

section .text
    global main
    extern printf, scanf

main:
    push rbp
    mov rbp,rsp

    ; Display first message
    mov rdi,msg1
    xor eax,eax
    call printf

    ; Accept first number
    mov rdi,fmt
    mov rsi,num1
    xor eax,eax
    call scanf

    ; Display second message
    mov rdi,msg2
    xor eax,eax
    call printf

    ; Accept second number
    mov rdi,fmt
    mov rsi,num2
    xor eax,eax
    call scanf

    ; Perform Subtraction
    mov eax,[num1]
    sub eax,[num2]

    mov esi,eax
    mov rdi,msg3
    xor eax,eax
    call printf

; Exit
mov eax,0
leave
ret
