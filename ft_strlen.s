# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mymik <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/23 02:58:27 by mymik             #+#    #+#              #
#    Updated: 2020/02/23 02:58:28 by mymik            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen
_ft_strlen:
	xor rax, rax
	jmp compare
increment:
	inc rax
compare:
	cmp BYTE [rdi + rax], 0
	jne increment
done:
	ret
