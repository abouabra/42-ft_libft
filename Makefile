SRC= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_toupper.c \
        ft_tolower.c ft_memset.c ft_bzero.c ft_memcpy.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
        ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
        ft_substr.c ft_strjoin.c ft_strtrim.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
        ft_putnbr_fd.c ft_itoa.c ft_split.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
        ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
		gnl.c gnl_utils.c \
		ft_dprintf.c ft_dprintf_utils.c my_alloc.c

OBJ_DIR = obj/
SRC_DIR = src/
OSRC = $(addprefix $(OBJ_DIR), $(SRC:.c=.o))
AR=ar -rcs
NAME=libft.a

RED = \033[1;31m
GREEN = \033[1;32m
BLUE = \033[1;34m
YELLOW = \033[1;33m
RESET = \033[0m

all: ascii $(NAME) 

$(NAME): $(OSRC)
	@$(AR) $@ $^

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) -Wall -Wextra -Werror -c $<  -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean:
	@rm -rf $(OBJ_DIR)
	@rm -f $(NAME)

re:fclean all

ascii:
	@clear
	@printf "$(GREEN)\
                                                                                    bbbbbbbb                                                        \n\
    ffffffffffffffff           tttt                                  lllllll   iiii b::::::b               ffffffffffffffff           tttt          \n\
   f::::::::::::::::f       ttt:::t                                  l:::::l  i::::ib::::::b              f::::::::::::::::f       ttt:::t          \n\
  f::::::::::::::::::f      t:::::t                                  l:::::l   iiii b::::::b             f::::::::::::::::::f      t:::::t          \n\
  f::::::fffffff:::::f      t:::::t                                  l:::::l         b:::::b             f::::::fffffff:::::f      t:::::t          \n\
  f:::::f       ffffffttttttt:::::ttttttt                             l::::l iiiiiii b:::::bbbbbbbbb     f:::::f       ffffffttttttt:::::ttttttt    \n\
  f:::::f             t:::::::::::::::::t                             l::::l i:::::i b::::::::::::::bb   f:::::f             t:::::::::::::::::t    \n\
 f:::::::ffffff       t:::::::::::::::::t                             l::::l  i::::i b::::::::::::::::b f:::::::ffffff       t:::::::::::::::::t    \n\
 f::::::::::::f       tttttt:::::::tttttt                             l::::l  i::::i b:::::bbbbb:::::::bf::::::::::::f       tttttt:::::::tttttt    \n\
 f::::::::::::f             t:::::t                                   l::::l  i::::i b:::::b    b::::::bf::::::::::::f             t:::::t          \n\
 f:::::::ffffff             t:::::t                                   l::::l  i::::i b:::::b     b:::::bf:::::::ffffff             t:::::t          \n\
  f:::::f                   t:::::t                                   l::::l  i::::i b:::::b     b:::::b f:::::f                   t:::::t          \n\
  f:::::f                   t:::::t    tttttt                         l::::l  i::::i b:::::b     b:::::b f:::::f                   t:::::t    tttttt\n\
 f:::::::f                  t::::::tttt:::::t                        l::::::li::::::ib:::::bbbbbb::::::bf:::::::f                  t::::::tttt:::::t\n\
 f:::::::f                  tt::::::::::::::t                        l::::::li::::::ib::::::::::::::::b f:::::::f                  tt::::::::::::::t\n\
 f:::::::f                    tt:::::::::::tt                        l::::::li::::::ib:::::::::::::::b  f:::::::f                    tt:::::::::::tt\n\
 fffffffff                      ttttttttttt                          lllllllliiiiiiiibbbbbbbbbbbbbbbb   fffffffff                      ttttttttttt  \n\
                                             ________________________                                                                               \n\
                                             _::::::::::::::::::::::_                                                                              \n\
                                             ________________________                                                                   $(RED)by: abouabra$(RESET)\n"



.PHONY: all clean fclean re bonus