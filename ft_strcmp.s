# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mymik <mymik@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/23 02:58:18 by mymik             #+#    #+#              #
#    Updated: 2020/03/04 14:32:27 by mymik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcmp
_ft_strcmp:
	xor rcx, rcx
	xor rax, rax
	xor rdx, rdx
	jmp check

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
	mov al, BYTE [rdi + rcx]
	mov dl, BYTE [rsi + rcx]
	sub rax, rdx
	xor rdx, rdx
	ret