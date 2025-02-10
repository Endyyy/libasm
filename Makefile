SRCS= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS= ${SRCS:.s=.o}

NAME=libasm.a

all: $(NAME)

%.o: %.s
	nasm -f elf64 -o $@ $<

$(NAME):$(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all re clean fclean
