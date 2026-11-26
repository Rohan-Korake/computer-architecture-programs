section .data
	msg_in      db "Enter a, b, c : ", 0
	fmt_in      db "%d", 0

	fmt_two     db "Roots are real and distinct: %.4f and %.4f", 10, 0
	fmt_one     db "Roots are real and equal: %.4f", 10, 0
	fmt_complex db "Roots are complex: %.4f + %.4fi and %.4f - %.4fi", 10, 0

	two_dbl     dq 2.0
	zero_dbl    dq 0.0
	neg_one_dbl dq -1.0

section .bss
	a resd 1
	b resd 1
	c resd 1
	d resd 1

section .text
	global main
	extern printf, scanf

main:
	push rbp
	mov rbp, rsp
	sub rsp, 32            

	mov rdi, msg_in
	xor eax, eax
	call printf

	mov rdi, fmt_in
	mov rsi, a
	xor eax, eax
	call scanf

	mov rdi, fmt_in
	mov rsi, b
	xor eax, eax
	call scanf

	mov rdi, fmt_in
	mov rsi, c
	xor eax, eax
	call scanf

	; d = b*b - 4*a*c
	mov eax, [b]
	imul eax, [b]

	mov ebx, [a]
	imul ebx, [c]
	imul ebx, 4

	sub eax, ebx
	mov [d], eax

	; Convert a, b, d to double (sd)
	cvtsi2sd xmm0, dword [a]    
	cvtsi2sd xmm1, dword [b]   
	cvtsi2sd xmm2, dword [d] 

	; two_a = 2.0 * a, neg_b = -b
	movsd xmm3, qword [two_dbl]
	mulsd xmm3, xmm0          

	movsd xmm4, xmm1
	mulsd xmm4, qword [neg_one_dbl] 

	mov eax, [d]
	cmp eax, 0
	jg real_distinct
	je real_equal

complex_roots:
	movsd xmm5, xmm4
	divsd xmm5, xmm3           

	movsd xmm6, xmm2
	mulsd xmm6, qword [neg_one_dbl] 
	sqrtsd xmm6, xmm6         
	divsd xmm6, xmm3         

	mov rdi, fmt_complex
	movsd xmm0, xmm5
	movsd xmm1, xmm6
	movsd xmm2, xmm5
	movsd xmm3, xmm6
	mov al, 4
	call printf
	jmp exit

real_distinct:
	sqrtsd xmm5, xmm2         

	movsd xmm0, xmm4
	addsd xmm0, xmm5
	divsd xmm0, xmm3

	movsd xmm1, xmm4
	subsd xmm1, xmm5
	divsd xmm1, xmm3

	mov rdi, fmt_two
	mov al, 2
	call printf
	jmp exit

real_equal:
 	movsd xmm0, xmm4
	divsd xmm0, xmm3

	mov rdi, fmt_one
	mov al, 1
	call printf

exit:
	mov eax, 0
	leave
	ret