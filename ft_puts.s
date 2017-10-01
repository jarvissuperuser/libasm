


	global ft_puts

	extern ft_strlen

	section .text



	ft_puts:

	    cmp        rdi, 0 		

	    je        .null

	    xor        rax, rax 	

	    push    rdi 			



	.print:

	    call    ft_strlen

	    mov        rdx, rax 	

	    mov        rdi, 1 		

	    pop        rsi 			

	    mov        rax, 0x2000004 

	    syscall

	    jmp        .line



	.null:

	    lea        rcx, [rel null] 

	    mov        rdi, 1

	    mov        rsi, rcx

	    mov        rdx, null_l	

	    mov        rax, 0x2000004

	    syscall



	.line:

	    mov        rdi, 0xA		  

	    lea        rcx, [rel char]

	    mov        [rcx], rdi	  

	    mov        rdi, 1 	

	    mov        rsi, rcx

	    mov        rdx, 1

	    mov        rax, 0x2000004

	    syscall

		mov rax, 10

	    ret



	section .data

	null:	    db "(null)"

	null_l:	    equ $-null 			; string lenght



	section    .bss

char:	    resb 0x1
['../ft_org.py', '../Libasm-master/src/ft_puts.s', ';']
