NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Iinclude -Ilibft/include

SRC_DIR = src
OBJ_DIR = obj
SRC_FILES = ft_printf.c ft_printhex.c ft_printptr.c\
			ft_printuns.c ft_printchar.c ft_printnbr.c ft_printstr.c

SRCS = $(addprefix $(SRC_DIR)/, $(SRC_FILES))
OBJ_FILES = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJ_FILES)
	make -C libft
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJ_FILES)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)
	make -C libft clean

fclean: clean
	rm -f $(NAME)
	make -C libft fclean

re: fclean all

.PHONY: all clean fclean re
