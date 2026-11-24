section .data
	msg1 db "Enter the First String : ",0
	msg2 db "Enter the Second String : ",0
	msg3 db "First String is : %s ",10,0
	msg4 db "Second String is : %s",10,0
	msg5 db "First String Length : %d",10,0
	msg6 db "Second String Length : %d",10,0
	msg7 db "String Concatenation : %s",10,0
	msg8 db "Both String are Equal",10,0
	msg9 db "Both String are not Equal",10,0
	msg10 db "String are Panlindrome",10,0
	msg11 db "String are not Palindrome",10,0
	msg12 db "String Reverse : %s",10,0
	fmt db "%s",0

section .bss
	str1 resq 100
	str2 resq 100
	result resq 100
	revStr resq 100

section .text
	global main
	extern printf,scanf,strlen,strcat,strcmp,strcpy

main: 
	push rbp
	mov rbp,rsp
	
	;Accept and Store Two Strings
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
	
	;Display Accepted Two Strings
	mov rdi, msg3
	mov rsi,str1
	xor eax,eax
	call printf
	
	mov rdi,msg4
	mov rsi,str2
	xor eax,eax
	call printf
	
	;Calculate and display string length
	mov rdi,str1
	call strlen
	
	mov esi,eax
	mov rdi,msg5
	xor eax,eax
	call printf
	
	mov rdi,str2
	call strlen
	
	mov esi,eax
	mov rdi, msg5
	xor eax,eax
	call printf
	
	;Display String Concatenation
	mov rdi,result
	mov rsi,str1
	call strcpy
	
	mov rdi,result
	mov rsi,str2
	call strcat
	
	mov rdi,msg7
	mov rsi,result
	xor eax,eax
	call printf
	
	;Display String Palindrome or not 
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
		mov rdi,msg10
		jmp finish
		
	notPalindrome:
		mov rdi,msg11
		
	finish:
		xor eax,eax
		call printf
	
	;Display reverse string 
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
		mov byte [revStr+rdi],0
		mov rdi,msg12
		mov rsi,revStr
		xor eax,eax
		call printf
	
mov eax,0
leave
ret