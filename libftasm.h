/* ************************************************************************** */

/*                                                                            */

/*                                                        :::      ::::::::   */

/*   libftasm.h                                         :+:      :+:    :+:   */

/*                                                    +:+ +:+         +:+     */

/*   By: rbaum <rbaum@student.42.fr>                +#+  +:+       +#+        */

/*                                                +#+#+#+#+#+   +#+           */

/*   Created: 2015/03/26 22:38:54 by rbaum             #+#    #+#             */

/*   Updated: 2015/03/31 00:40:59 by rbaum            ###   ########.fr       */

/*                                                                            */

/* ************************************************************************** */



#ifndef LIBFTASM_H

# define LIBFTASM_H

# include <unistd.h>

# include <stdlib.h>





void		ft_bzero(void *s, size_t n);



int			ft_isalpha(int c);

int			ft_isdigit(int c);

int			ft_isalnum(int c);

int			ft_isascii(int c);

int			ft_isprint(int c);

int			ft_toupper(int c);

int			ft_tolower(int c);



int			ft_isupper(int c);

int			ft_islower(int c);



void		ft_putchar(int c);

int			ft_puts(const char *s);



char		*ft_strcat(char *s1, const char *s2);

size_t		ft_strlen(const char *s);

void*		ft_memset(void *b, int c, size_t len);

void*		ft_memcpy(void *dst, const void *src, size_t n);

char*		ft_strdup(const char *s);



void		ft_cat(int fd);





//char		*ft_strnew(size_t size);

//int			ft_isupper(int c);

//int			ft_islower(int c);



//int			ft_putserr(const char *s);

//int			ft_putsfd(int fd, const char *s);

//void*		ft_memalloc(size_t n);

//void		ft_strclr(char *s);





#endif

['../ft_org.py', '../Libasm-master/inc/libftasm.h', ';']
