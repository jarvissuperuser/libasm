

	section .text

	global ft_islower



	ft_islower:

			mov rax, 1

			cmp rdi, 'a'

			jl fail

			cmp rdi, 'z'

			jg fail

			ret



	fail:

	mov rax, 0

	ret
