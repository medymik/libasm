# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mymik <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/23 02:58:22 by mymik             #+#    #+#              #
#    Updated: 2020/02/23 02:58:23 by mymik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcpy
_ft_strcpy:
	mov rcx, 0
	mov rdx, 0
	cmp rsi, 0
	jz return
	jmp copy
increment:
	inc rcx
	cmp rsi, 0
	jz return
copy:
	mov dl, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], dl
	cmp dl, 0
	jnz increment
return:
	mov rax, rdi
	ret
