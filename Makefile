# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jonny <josaykos@student.42.fr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/05 10:30:02 by josaykos          #+#    #+#              #
#    Updated: 2021/03/26 10:32:27 by jonny            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

SRC		= ft_memset.c \
			  ft_bzero.c \
			  ft_memcpy.c \
			  ft_memccpy.c \
			  ft_memmove.c \
			  ft_memchr.c \
			  ft_memcmp.c \
			  ft_isalpha.c \
			  ft_isdigit.c \
			  ft_isalnum.c \
			  ft_isascii.c \
			  ft_isprint.c \
			  ft_toupper.c \
			  ft_tolower.c \
			  string/ft_strlen.c \
			  string/ft_strchr.c \
			  string/ft_strrchr.c \
			  string/ft_strncmp.c \
			  string/ft_strlcpy.c \
			  string/ft_strldup.c \
			  string/ft_strlcat.c \
			  string/ft_strnstr.c \
			  string/ft_strdup.c \
			  string/ft_strcat.c \
			  string/ft_substr.c \
			  string/ft_strtrim.c \
			  string/ft_strjoin.c \
			  string/ft_split.c \
			  string/ft_strmapi.c \
				string/split_whitespace.c \
			  ft_atoi.c \
			  ft_calloc.c \
			  ft_itoa.c \
			  ft_putchar_fd.c \
			  ft_putstr_fd.c \
			  ft_putendl_fd.c \
			  ft_putnbr_fd.c \
			  ft_lstnew.c \
			  ft_lstadd_front.c \
			  ft_lstsize.c \
			  ft_lstlast.c \
			  ft_lstadd_back.c \
			  ft_lstdelone.c \
			  ft_lstclear.c \
			  ft_lstiter.c \
			  ft_lstmap.c \
			  get_next_line/get_next_line.c \
			  get_next_line/get_next_line_utils.c \
			  ft_printf/ft_printf.c \
			  ft_printf/ft_printf_checkflag.c \
			  ft_printf/ft_printf_convertbase.c \
			  ft_printf/ft_printf_getspecs.c \
			  ft_printf/ft_printf_nbr.c \
			  ft_printf/ft_printf_print.c \
			  ft_printf/ft_printf_str.c \
				ft_putchar.c \

OBJ		 		= $(SRC:.c=.o)

RM 				= rm -rf
CC 				= clang
MEM				= -g -O3 -fsanitize=address
INCLUDES 	= -Iincludes

all:	$(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.c
	$(CC) -Wall -Wextra -Werror $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean:		clean
	$(RM) $(NAME)

re: clean fclean all
