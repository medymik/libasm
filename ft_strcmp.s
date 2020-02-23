# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mymik <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/23 02:58:18 by mymik             #+#    #+#              #
#    Updated: 2020/02/23 02:58:19 by mymik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcmp
_ft_strcmp:
	xor rcx, rcx
	cmp rsi, 0
	jz isnull
	cmp rdi, 0
	jz isnull
	jmp check

isnull:
	cmp rdi, rsi
	jz equal
	jg greater
	jmp less

compare:
	mov dl, BYTE [rdi + rcx]
	cmp dl, BYTE [rsi + rcx]
	jne last

increment:
	inc rcx
 
check:
	cmp BYTE [rdi + rcx], 0
	je last
	cmp BYTE [rdi + rcx], 0
	je last
	jmp compare

last:
	mov dl, BYTE [rdi + rcx]
	sub dl, BYTE[rsi + rcx]
	cmp dl, 0
	jz equal
	jl less

greater:
	mov rax, 1
	ret

less:
	mov rax, -1
	ret

equal:
	mov rax, 0
	ret
