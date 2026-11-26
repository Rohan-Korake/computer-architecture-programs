
section .data
    msg1 db "Enter hexadecimal number: ", 0
    msg2 db "BCD (Decimal): %s", 10, 0
    fmt  db "%llx", 0

section .bss
    num resq 1
    buffer resb 32

section .text
    global main
    extern printf, scanf

main:
    push rbp

    ; Input hexadecimal number
    mov rdi, msg1
    xor eax, eax
    call printf

    mov rdi, fmt
    mov rsi, num
    xor eax, eax
    call scanf

    ; Conversion to decimal digits
    mov rax, [num]
    mov rcx, 10
    lea r8, [buffer + 31]

    mov byte [r8], 0
    dec r8

L1:
    xor edx, edx
    div rcx

    add dl, '0'
    mov [r8], dl

    dec r8
    test rax, rax
    jnz L1

    ; Display result
    lea rsi, [r8 + 1]
    mov rdi, msg2
    xor eax, eax
    call printf

    pop rbp
    mov eax, 0
    ret
