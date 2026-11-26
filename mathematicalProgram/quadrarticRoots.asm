section .data
	msg1 db "Enter a,b,c : ",0
	fmt db "%d",0
	
	msg2 db "Roots are Real and Distinct",10,0
	msg3 db "Roots are Real and Eqaul",10,0
	msg4 db "Roots are Imaginary",10,0

section .bss
	a resd 1
	b resd 1
	c resd 1
	d resd 1
	
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
	mov rsi,a
	xor eax,eax
	call scanf 
	
	mov rdi,fmt
	mov rsi,b
	xor eax,eax
	call scanf 
	
	mov rdi,fmt 
	mov rsi,c
	xor eax,eax
	call scanf 
	
	;b * b
	mov eax,[b]
	imul eax,[b]
	
	;4 * a * c
	mov ebx,[a]
	imul ebx,[c]
	imul ebx,4
	
	;b * b - 4 * a * c
	sub eax,ebx
	mov [d],eax
	
	cmp eax,0
	jg distinct
	je equal
	
	mov rdi,msg4
	xor eax,eax
	call printf
	jmp exit
	
distinct:
	mov rdi,msg2
	xor eax,eax
	call printf
	jmp exit
	
equal:
	mov rdi,msg3
	xor eax,eax
	call printf

exit:
	mov eax,0
	leave 
	ret
	