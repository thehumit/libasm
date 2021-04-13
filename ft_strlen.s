segment .text
	global _ft_strlen
_ft_strlen:
	mov rax, 0 ; i = 0
_ft_strlen_loop:
	cmp byte [rdi + rax], 0 ; if str[i] == '\0'
	je _ft_strlen_return ; return(i)
	inc rax
	jmp _ft_strlen_loop
_ft_strlen_return:
	ret
