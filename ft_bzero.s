

	

	section .text

			global ft_bzero



	ft_bzero:

			cmp		rdi, 0

			je		exit

			dec		rsi

			cmp 	rsi, 0

			jl		exit

			mov		byte[rdi + rsi], 0

			jmp		ft_bzero

	exit:

		ret

