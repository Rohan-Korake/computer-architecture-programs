section .data
    msg1 db "Enter string : ",0
    msg2 db "Entered String : %s",0
    fmt db "%s",0

section .bss
    str1 resq 100

section .text
    global main
    extren printf,scanf 

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

    mov rdi,msg2
    mov rsi,str1
    xor eax,eax
    call printf

mov eax,0
leave 
ret