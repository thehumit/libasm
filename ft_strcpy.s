segment .text
	global _ft_strcpy
_ft_strcpy:
	mov rax, 0 ; i = 0
_ft_strcpy_loop:
	;cmp byte [rsi + rax], 0 ; if str[i] == '\0'
	;je _ft_strcpy_return ; return(i)
	mov cl, byte [rsi + rax] ; tmp = src[i]
	mov byte [rdi + rax], cl ; dest[i] = tmp
	cmp cl, 0
	je _ft_strcpy_return
	inc rax
	jmp _ft_strcpy_loop
_ft_strcpy_return:
	movsx		rax, cl
	movsx		rdx, dl
	mov rax, rdi
	ret
