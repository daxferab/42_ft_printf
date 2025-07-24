NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Iinclude -Ilibft/include

SRC_DIR = src
SRC_FILES = ft_printf.c ft_printhex.c ft_printptr.c\
			ft_printuns.c ft_printchar.c ft_printnbr.c ft_printstr.c

SRCS = $(addprefix $(SRC_DIR)/, $(SRC_FILES))
OBJ_FILES = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ_FILES)
	make -C libft
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJ_FILES)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_FILES)
	make -C libft clean

fclean: clean
	rm -f $(NAME)
	make -C libft fclean

re: fclean all

.PHONY: all clean fclean re
