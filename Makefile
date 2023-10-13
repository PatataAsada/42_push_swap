# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yemoreno <yemoreno@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/13 09:43:28 by yemoreno          #+#    #+#              #
#    Updated: 2023/10/13 14:33:49 by yemoreno         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap.a
LIBFTNAME = libft.a
LIBFTDIR = ./Libft

SRCS = \
	main.c \
	ft_push_swap.c \
	ft_swap.c \
	ft_push.c \
	ft_rotate.c \
	ft_rrotate.c

OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

makelibft:
	make -C $(LIBFTDIR)
	cp $(LIBFTDIR)/$(LIBFTNAME) .
	mv $(LIBFTNAME) $(NAME)

$(NAME): makelibft $(OBJS)
	ar -rs $(NAME) $(OBJS)

%.o: %.c
	$(CC) -c $(CFLAGS) $?

clean:
	rm -f $(OBJS)
	cd $(LIBFTDIR) && make clean
    
fclean: clean
	rm -f $(NAME)
	cd $(LIBFTDIR) && make fclean
    
re: fclean all

.PHONY: all bonus clean fclean re