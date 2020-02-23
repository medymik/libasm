# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdub.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mymik <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/23 02:53:49 by mymik             #+#    #+#              #
#    Updated: 2020/02/23 03:37:26 by mymik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
		mov rbx, rdi
		call _ft_strlen
		mov rdi, rax
		inc rdi		 
		push rdi

		call _malloc
		cmp rax, 0
		je done
		mov rdi, rax
		mov rsi, rbx
		pop rdx

		call _ft_strcpy
done:
	ret
