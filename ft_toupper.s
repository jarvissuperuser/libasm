

	section .text

	global	ft_toupper



	ft_toupper:

			mov rax, rdi

			cmp rdi, 'a'

			jl fail

			cmp rdi, 'z'

			jg fail

			sub rax, 32

			ret



	fail:

		ret
['../ft_org.py', '../Libasm-master/src/ft_toupper.s', ';']
