section .data 
    msg1 db "Enter the string : ",0
    msg2 db "Reverse of string : %s",10,0
    fmt db "%s",0

section .bss
    str1 resq 100
    revStr resq 100

section .text
    global main
    extern printf,scanf,strlen

main:
    push rbp
    mov rbp,rsp

    mov rdi,msg1
    xor eax,eax
    call printf

    mov rdi,fmt 
    mov rsi,str1
    xor eax,eax
    call scanf 

    mov rdi,str1
    call strlen

    dec rax 
    mov rsi,rax
    xor rdi,rdi

rev:
    cmp rsi,-1
    je exit

    mov al,[str1+rsi]
    mov [revStr+rdi],al

    dec rsi
    inc rdi
    jmp rev

exit:
    mov byte [revStr+rsi],0
    mov rdi,msg2
    mov rsi,revStr
    xor eax,eax
    call printf

mov eax,0
leave 
ret