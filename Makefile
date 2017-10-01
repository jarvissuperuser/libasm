# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmugadza <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/01 18:08:54 by tmugadza          #+#    #+#              #
#    Updated: 2017/10/01 18:13:08 by tmugadza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = nasm
FL = -f macho64
name = libftasm.a
SRC = ft_bzero.s \
ft_cat.s \
ft_isalnum.s \
ft_isalpha.s \
ft_isascii.s \
ft_isdigit.s \
ft_islower.s \
ft_isprint.s \
ft_isupper.s \
ft_memcpy.s \
ft_memset.s \
ft_putchar.s \
ft_puts.s \
ft_strcat.s \
ft_strdup.s \
ft_strlen.s \
ft_tolower.s \
ft_toupper.s 

obj = ft_bzero.o \
ft_cat.o \
ft_isalnum.o \
ft_isalpha.o \
ft_isascii.o \
ft_isdigit.o \
ft_islower.o \
ft_isprint.o \
ft_isupper.o \
ft_memcpy.o \
ft_memset.o \
ft_putchar.o \
ft_puts.o \
ft_strcat.o \
ft_strdup.o \
ft_strlen.o \
ft_tolower.o \
ft_toupper.o 

all : $(name)

$(name) : $(obj)
	ar rcs $(obj)

$(obj) :
	$(CC) $(FL) $(SRC)
 
clean : 
	rm -rf $(obj)

re : clean all
