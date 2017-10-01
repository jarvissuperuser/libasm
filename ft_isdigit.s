

	section .text

			global ft_isdigit



	ft_isdigit:

			mov rax, 1

			cmp rdi, '0'

			jl	exit

			cmp rdi, '9'

			jg exit

			ret

	

	exit:

		mov rax, 0

		ret


