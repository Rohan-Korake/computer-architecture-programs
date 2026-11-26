section .data
    msg1 db "Enter BCD number: ", 0
    msg2 db "Hexadecimal: %llX", 10, 0
    fmt  db "%s", 0

section .bss
    str resb 32
    num resq 1

section .text
    global main
    extern printf, scanf

main:
    push rbp

    ; Input BCD number as decimal string
    mov rdi, msg1
    xor eax, eax
    call printf

    mov rdi, fmt
    mov rsi, str
    xor eax, eax
    call scanf

    ; Convert BCD to hexadecimal
    xor rax, rax
    mov rsi, str

L1:
    movzx rbx, byte [rsi]
    test bl, bl
    jz L2

    sub bl, '0'
    imul rax, rax, 10
    add rax, rbx

    inc rsi
    jmp L1

L2:
    mov [num], rax

    ; Display hexadecimal
    mov rdi, msg2
    mov rsi, rax
    xor eax, eax
    call printf

    pop rbp
    mov eax, 0
    ret