

	section .text

			global ft_isprint



	ft_isprint:

		mov rax, 1

		cmp rdi, 32

		jl exit

		cmp rdi, 126

		jg exit

		ret



	exit:

		mov rax, 0

		ret



['../ft_org.py', '../Libasm-master/src/ft_isprint.s', ';']
