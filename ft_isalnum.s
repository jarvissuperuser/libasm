

	section .text

	global	ft_isalnum



	extern ft_isalpha

	extern ft_isdigit

	

	ft_isalnum:

	call	ft_isalpha

	cmp		rax, 1

	je		 exit

	call	ft_isdigit



	exit:	

	ret
['../ft_org.py', '../Libasm-master/src/ft_isalnum.s', ';']
