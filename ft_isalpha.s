

	section .text

	global	ft_isalpha



	ft_isalpha:



		cmp	rdi, 'A'

		jl false

		cmp rdi, 'z'

		jg false

		cmp rdi, 'Z'

		jg min

		jmp true



	min:

	cmp rdi, 'a'

	jl false

	jmp true





	true:

	mov rax, 1

	ret

	

	false:

	mov rax, 0

	ret
['../ft_org.py', '../Libasm-master/src/ft_isalpha.s', ';']
