

	%define WRITE 0x2000004

	

	global	ft_putchar

	section	.text



	ft_putchar:

		push rdi

		mov rsi, rsp

		mov rdx, 1

		mov rdi, 1

		mov rax, WRITE

		syscall

		jc error



	exit:	

		pop rdi

		ret



	error:

	mov rax, -1

	jmp exit

