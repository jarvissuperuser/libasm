

	

	section .text

	global ft_strdup

	extern malloc

	extern ft_strlen

	extern ft_memcpy

	

	ft_strdup:

		push rdi

		mov rax, 0

		cmp rdi, 0

		je exit					

	

		call ft_strlen

		inc rax					

		mov r12, rax			

		mov rdi, r12

		call malloc

		cmp rax, 0

		je exit



		mov rdi, rax 			

		pop rsi					

		mov rdx, r12			

		call ft_memcpy

		ret

		





	exit:

	pop rdi

	ret

