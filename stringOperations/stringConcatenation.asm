section .data 	
	msg1 db "Enter the first string : ",0
	msg2 db "Enter the second string : ",0
	msg3 db "String concatination : %s",10,0
	fmt db "%s",0
	
section .bss
	str1 resq 100
	str2 resq 100
	result resq 100

section .text
	global main
	extern printf,scanf,strcpy,strcat

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
	xor eax,eax
	call printf
	
	mov rdi,fmt
	mov esi,str2
	xor eax,eax
	call scanf
	
	mov rdi,result
	mov rsi,str1
	call strcpy
	
	mov rdi,result 
	mov rsi,str2
	call strcat
	
	mov rdi,msg3
	mov rsi,result
	xor eax,eax
	call printf
	
mov eax,0
leave
ret
	
	