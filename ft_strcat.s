

	

	section .text

	global	ft_strcat

	extern	ft_strlen

	extern	ft_memcpy



	

	ft_strcat:

		push rdi

		mov rax, 0

		cmp rdi, 0

		je exit

		cmp rsi, 0

		je exit				



		call ft_strlen		

		mov r12, rax			

		

		mov rdi, rsi

		call ft_strlen	

		inc rax					



		mov rdx, rax			

		pop rdi					

		push rdi

		add rdi, r12			

		call ft_memcpy





	exit:

	pop rax

	ret

