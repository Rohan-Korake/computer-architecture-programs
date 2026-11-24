section .data 
    msg1 db "Enter the first number : ",0
    msg2 db "Enter the second number : ",0
    msg3 db "Multiplication : %llX",0
    fmt db "%llX",0

section .bss
    num1 resq 1
    num2 resq 2

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
    mov rsi,num1
    xor eax,eax
    call scanf

    mov rdi,msg2
    xor eax,eax
    call printf

    mov rdi,fmt 
    mov rsi,num2
    xor eax,eax
    call scanf 

mov rax,0
	mov rcx,[num2]

loop:
    cmp rcx,0
	je exit

	add rax,[num1]
	dec rcx
	jmp loop


exit:
    mov rdi,msg3
	mov rsi,rax
	xor eax,eax
	call printf

mov eax,0
leave
ret
