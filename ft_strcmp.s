segment .text
	global _ft_strcmp
_ft_strcmp:
	mov r8b, byte [rdi]
	mov r9b, byte [rsi]
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end
	cmp r8b, r9b
	jne end
	inc rsi
	inc rdi
	jmp _ft_strcmp
end:
	movsx rax, r8b
	movsx rdx, r9b
	sub rax, rdx
	ret
