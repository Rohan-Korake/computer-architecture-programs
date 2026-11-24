
%macro ADDI 0
    mov eax, [num1]
    add eax, [num2]
    mov esi, eax
    mov rdi, msg3
    xor eax, eax
    call printf
%endmacro

%macro SUBT 0
    mov eax, [num1]
    sub eax, [num2]
    mov esi, eax
    mov rdi, msg4
    xor eax, eax
    call printf
%endmacro

%macro MULTI 0
    mov eax, [num1]
    imul eax, [num2]
    mov esi, eax
    mov rdi, msg5
    xor eax, eax
    call printf
%endmacro

%macro DIVI 0
    mov eax, [num1]
    cdq
    idiv dword [num2]
    mov esi, eax
    mov rdi, msg6
    xor eax, eax
    call printf
%endmacro

section .data
    menu db "====== Arithmetic Menu ======",10
         db "1. Addition",10
         db "2. Subtraction",10
         db "3. Multiplication",10
         db "4. Division",10
         db "5. Exit",10
         db "Enter your choice: ",0

    valid db "Plese Enter valid choice!!!",10,0
    msg1 db "Enter 1st Number: ",0
    msg2 db "Enter 2nd Number: ",0

    msg3 db "Addition: %d",10,0
    msg4 db "Subtraction: %d",10,0
    msg5 db "Multiplication: %d",10,0
    msg6 db "Division: %d",10,0

    fmt db "%d",0

section .bss
    num1 resd 1
    num2 resd 1
    choice resd 1

section .text
    global main
    extern printf, scanf

main:
    push rbp
    mov rbp, rsp

menu_start:
    mov rdi, menu
    xor eax, eax
    call printf

    mov rdi, fmt
    mov rsi, choice
    xor eax, eax
    call scanf

    mov eax, [choice]

    cmp eax, 1
    je addition

    cmp eax, 2
    je subtraction

    cmp eax, 3
    je multiplication

    cmp eax, 4
    je division

    cmp eax, 5
    je exit_program

    mov rdi, valid
    xor eax, eax
    call printf
    jmp menu_start

addition:
    call get_numbers
    ADDI
    jmp menu_start

subtraction:
    call get_numbers
    SUBT
    jmp menu_start

multiplication:
    call get_numbers
    MULTI
    jmp menu_start

division:
    call get_numbers
    cmp dword [num2], 0
    je divide_error
    DIVI
    jmp menu_start

divide_error:
    mov rdi, valid
    xor eax, eax
    call printf
    jmp menu_start

get_numbers:
    mov rdi, msg1
    xor eax, eax
    call printf

    mov rdi, fmt
    mov rsi, num1
    xor eax, eax
    call scanf

    mov rdi, msg2
    xor eax, eax
    call printf

    mov rdi, fmt
    mov rsi, num2
    xor eax, eax
    call scanf

    ret

exit_program:
    mov eax, 0
    leave
    ret
