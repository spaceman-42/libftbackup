# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jadiaz-b <jadiaz-b@student.42madrid>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/20 12:54:51 by jadiaz-b          #+#    #+#              #
#    Updated: 2024/01/20 18:05:22 by jadiaz-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
AR = ar
CCFLAGS = -Wall -Wextra -Werror
ARFLAGS = -rcs

SRC = ft_memset.c ft_bzero.c ft_strlen.c ft_isdigit.c ft_isalpha.c ft_isprint.c \
	  ft_isascii.c ft_isalnum.c ft_memcpy.c ft_memmove.c ft_strchr.c  ft_strlcpy.c \
	  ft_toupper.c ft_tolower.c ft_strrchr.c\

OBJ = $(SRC:.c=.o)

$(NAME): $(OBJ) 
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

all: $(NAME)

re: fclean all

.PHONY: all clean fclean re
