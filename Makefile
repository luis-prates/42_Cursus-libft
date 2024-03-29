NAME = libft.a

SRC= ft_memset ft_bzero ft_memcpy ft_memccpy ft_memmove ft_memchr\
ft_memcmp ft_strlen ft_strlcpy ft_strlcat ft_strchr ft_strrchr\
ft_strnstr ft_strncmp ft_atoi ft_isalpha ft_isdigit ft_isalnum\
ft_isascii ft_isprint ft_toupper ft_tolower ft_calloc ft_strdup\
ft_substr ft_strjoin ft_strtrim ft_split ft_itoa ft_strmapi ft_putchar_fd\
ft_putstr_fd ft_putendl_fd ft_putnbr_fd

BONUS = ft_lstadd_back ft_lstadd_front ft_lstclear ft_lstdelone\
ft_lstiter ft_lstlast ft_lstmap ft_lstnew ft_lstsize ft_isblank\
ft_islower ft_isupper ft_putchar ft_putnbr ft_putstr_non_printable\
ft_strcat ft_strlowcase ft_strndup ft_strupcase ft_str_is_printable\
ft_putstr

CC =gcc

RM =rm -f

CFLAGS = -Wall -Wextra -Werror -I.

all:$(NAME)

$(NAME): $(SRC:=.o) 
		ar rc $(NAME) $(SRC:=.o)

clean:
	$(RM)   $(SRC:=.o) $(BONUS:=.o)

fclean: clean
		$(RM)   $(NAME)

re: fclean  $(NAME)

bonus:  $(SRC:=.o)  $(BONUS:=.o)
		ar rc $(NAME) $(SRC:=.o)    $(BONUS:=.o)

so: $(SRC:=.o) $(BONUS:=.o)
	gcc -shared -o libft.so $(SRC:=.o) $(BONUS:=.o)

.PHONY:         all clean fclean bonus