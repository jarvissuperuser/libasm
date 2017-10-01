

	section .text

			global ft_isascii



	ft_isascii:

			mov rax, 1

			cmp rdi, 0

			jl	exit

			cmp rdi, 127

			jg exit

			ret



	exit:

		mov rax, 0

		ret

