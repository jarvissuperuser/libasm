

	section .text

	global ft_isupper



	ft_isupper:

			mov rax, 1

			cmp rdi, 'A'

			jl fail

			cmp rdi, 'Z'

			jg fail

			ret



	fail:

		mov rax, 0

		ret

	
['../ft_org.py', '../Libasm-master/src/ft_isupper.s', ';']
