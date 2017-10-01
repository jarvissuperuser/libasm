

	section .text

	global	ft_tolower



	ft_tolower:

			mov rax, rdi

			cmp rdi, 'A'

			jl fail

			cmp rdi, 'Z'

			jg fail

			add rax, 32

			ret



	fail:

	ret
