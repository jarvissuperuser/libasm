

	section .text

	global 	ft_cat



	ft_cat:

	    mov        r8, rdi

	    lea        rsi, [rel buf] 


	.reset_fd:

	    mov        rdi, r8



	.loop:

	    mov        rdx, buflen

	    mov        rax, 0x2000003 

	    syscall

	    jc        .error

	    cmp        rax, 0 		

	    je        .end

	    mov        rdi, 1 		

	    mov        rdx, rax 	

	    mov        rax, 0x2000004 

	    syscall

	    jmp        .reset_fd



	.error:

	.end:

	    ret



	section .bss				

	buf:	    resb 256		

	buflen:	    equ $-buf		
]
