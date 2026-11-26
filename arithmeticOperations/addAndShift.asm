section .data 
	msg1 db "Enter the first number : ",0
	msg2 db "Enter the second number : ",0
	fmt db "%lld",0
	msg3 db "Multiplication  : %lld",10,0
	
section .bss
	num1 resq 1
	num2 resq 1
	result resq 1
	
section .text 
	global main
	extern printf, scanf 

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
	
	mov rax,[num1]
	mov rbx,[num2]
	xor rcx,rcx
	
	mov rdx,64
	
L1:
	test rbx,1
	jz L2
	
	add rcx,rax
	
L2:
	shl rax,1
	shr rbx,1
	
	dec rdx
	jnz L1
	
	mov [result],rcx
	
	mov rdi,msg3
	mov rsi,rcx
	xor eax,eax
	call printf

mov eax,0
leave
ret
