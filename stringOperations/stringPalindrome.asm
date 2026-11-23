section .data
	msg1 db "Enter the string : ",0
	msg2 db "String is Palindrome",0
	msg3 db "String is Not Palindrome",0
	fmt db "%s",0
	
section .bss
	str1 resq 100
	
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
	
	mov rsi,0
	mov rdi,rax
	dec rdi
	
check: 
	cmp rsi,rdi
	jge palindrome
	
	mov al,[str1+rsi]
	mov bl,[str1+rdi]
	
	cmp al,bl
	jne notPalindrome
	
	inc rsi
	dec rdi
	
	jmp check

palindrome:
	mov rdi,msg2
	jmp finish

notPalindrome: 
	mov rdi,msg3
	jmp finish

finish: 
	xor eax,eax
	call printf

mov eax,0
leave
ret

