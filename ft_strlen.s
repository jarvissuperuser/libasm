

	section .text

	global ft_strlen



	ft_strlen:

		xor rcx, rcx				;all byte of rcx set to 0

		mov rax, 0

		cmp rdi, 0

		je exit

		not rcx					; all byte of rcx set to 1

		repne scasb

		not rcx					

		lea rax, [rcx - 1]

		

	exit:

	ret
['../ft_org.py', '../Libasm-master/src/ft_strlen.s', ';']
