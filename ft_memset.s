

	; void*       ft_memset(void *b, int c, size_t len);

	

	section .text

	global ft_memset



	ft_memset:

		push rdi

		cmp rdx, 0

		jle exit

		cmp	rdi, 0

		je exit

		mov rax, rsi			; needed by stosb to copy rax to rdi

		mov rcx, rdx			;rcx = counter ; needed by rep

		rep stosb



	exit:

		pop rdi

		mov rax, rdi

		ret

['../ft_org.py', '../Libasm-master/src/ft_memset.s', ';']
