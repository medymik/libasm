CC = nasm
SRCS = ft_strlen.s \
	   ft_strdup.s \
	   ft_strcpy.s \
	   ft_write.s \
	   ft_read.s \
	   ft_strcmp.s

ARCH = -f macho64
OBJS = $(SRCS:.s=.o)
NAME = libasm.a


%.o : %.s
	$(CC) $(ARCH) -o $@ $<

all: $(NAME)

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)
	gcc main.c libasm.a

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
