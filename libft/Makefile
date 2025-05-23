NAME = libft.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra
INCLUDE = -I include/

OBJ_DIR = obj

HEADER := include/libft.h

SRC_FILES = \
	$(addprefix mandatory/,\
		$(addprefix characters/,\
			ft_isalnum.c\
			ft_isalpha.c\
			ft_isascii.c\
			ft_isdigit.c\
			ft_isprint.c\
			ft_tolower.c\
			ft_toupper.c\
		)\
		$(addprefix memory/,\
			ft_bzero.c\
			ft_calloc.c\
			ft_memchr.c\
			ft_memcmp.c\
			ft_memcpy.c\
			ft_memmove.c\
			ft_memset.c\
		)\
		$(addprefix output/,\
			ft_putchar_fd.c\
			ft_putendl_fd.c\
			ft_putnbr_fd.c\
			ft_putstr_fd.c\
		)\
		$(addprefix strings/,\
			ft_atoi.c\
			ft_itoa.c\
			ft_split.c\
			ft_strchr.c\
			ft_strdup.c\
			ft_striteri.c\
			ft_strjoin.c\
			ft_strlcat.c\
			ft_strlcpy.c\
			ft_strlen.c\
			ft_strmapi.c\
			ft_strncmp.c\
			ft_strnstr.c\
			ft_strrchr.c\
			ft_strtrim.c\
			ft_substr.c\
		)\
	)\
	$(addprefix ft_printf/,\
		ft_printchar.c\
		ft_printstr.c\
		ft_printptr.c\
		ft_printuns.c\
		ft_printhex.c\
		ft_printf.c\
		ft_printnbr.c\
	) \
	$(addprefix bonus/,\
		ft_lstnew_bonus.c\
		ft_lstadd_front_bonus.c\
		ft_lstsize_bonus.c\
		ft_lstlast_bonus.c\
		ft_lstadd_back_bonus.c\
		ft_lstdelone_bonus.c\
		ft_lstclear_bonus.c\
		ft_lstiter_bonus.c\
		ft_lstmap_bonus.c\
	) \
	$(addprefix GNL/,\
		get_next_line.c gnl_utils.c \
	)

SRC_FILES := $(addprefix src/, $(SRC_FILES))

OBJ_FILES = $(SRC_FILES:src/%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(NAME): $(OBJ_FILES) $(HEADER)
	ar -rcs $(NAME) $(OBJ_FILES)

$(OBJ_DIR)/%.o: src/%.c | $(OBJ_DIR)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
