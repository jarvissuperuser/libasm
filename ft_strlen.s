

	section .text

	global ft_strlen



	ft_strlen:

		xor rcx, rcx				

		mov rax, 0

		cmp rdi, 0

		je exit

		not rcx				

		repne scasb

		not rcx					

		lea rax, [rcx - 1]

		

	exit:

	ret
