section .data 	
	msg1 db "Enter the first string : ",0
	msg2 db "Enter the second string : ",0
	msg3 db "Strings are Equal",0
	msg4 db "Strings are not Equal",0
	fmt db "%s",0
	
section .bss
	str1 resq 100
	str2 resq 100

section .text
	global main
	extern printf,scanf,strcmp

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
	mov rsi,str2
	xor eax,eax
	call scanf
	
	mov rdi,str1
	mov rsi,str2
	call strcmp
	
	cmp eax,0
	je equal
	
	mov rdi,msg4
	jmp display
	
equal:
	mov rdi,msg3
	
display:
	xor eax,eax
	call printf
	
mov eax,0
leave
ret
	
	