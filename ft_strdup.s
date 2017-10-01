

	;; 	char *     strdup(const char *s1) ;

	;;	    void *	     malloc(size_t size)	;

	;;   void *    memcpy(void *restrict dst, const void *restrict src, size_t n) ;

	

	section .text

	global ft_strdup

	extern malloc

	extern ft_strlen

	extern ft_memcpy

	

	ft_strdup:

		push rdi

		mov rax, 0

		cmp rdi, 0

		je exit					;all the above is protection

	

		call ft_strlen

		inc rax					; for '\0'

		mov r12, rax			; save in r12 because r12 is a callee saved (r12-r15)

		mov rdi, r12

		call malloc

		cmp rax, 0

		je exit



		mov rdi, rax 			; dst = malloc(s1)

		pop rsi					; src = s1;

		mov rdx, r12			; rdx = strlen

		call ft_memcpy

		ret

		





	exit:

	pop rdi

	ret



['../ft_org.py', '../Libasm-master/src/ft_strdup.s', ';']
