

	

	section .text

	global	ft_strcat

	extern	ft_strlen

	extern	ft_memcpy



	

	ft_strcat:

		push rdi

		mov rax, 0

		cmp rdi, 0

		je exit

		cmp rsi, 0

		je exit					;all of the above is security



		call ft_strlen			;strlen(s1)

		mov r12, rax			; lenght of s1 in r12

		

		mov rdi, rsi

		call ft_strlen	

		inc rax					;for '\0'



		mov rdx, rax			;lenght of s2 in rdx

		pop rdi					;put initial value of rdi in rdi

		push rdi

		add rdi, r12			;go to end of chain

		call ft_memcpy





	exit:

	pop rax

	ret

['../ft_org.py', '../Libasm-master/src/ft_strcat.s', ';']
