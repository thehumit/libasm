NAME = libasm.a

NA = nasm

NFLAGS = -f macho64

SRC =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s \
		ft_write.s \
		ft_read.s

OBJ = $(SRC:.s=.o)

B_OBJ = $(SRC:.s=.o) $(B_SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@echo "\033[0;33mUpdating library..."
	ar rc $(NAME) $^
	ranlib $(NAME)
	@echo "\033[0m"

%.o: %.s
	@echo "\033[0;32mGenerating binary..."
	$(NA) $(NFLAGS) $<
	@echo "\033[0m"

clean:
	@echo "\033[0;31mCleaning..."
	rm -f $(B_OBJ)
	rm -f ./exec
	@echo "\033[0m"

fclean: clean
	@echo "\033[0;31mRemoving library..."
	rm -f $(NAME)
	@echo "\033[0m"

re: fclean all

test: re
	@echo "\033[0;31mCleaning..."
	rm -f $(B_OBJ)
	rm -f ./exec
	@echo "\033[0m"
	@echo "\033[0;36mTesting : "
	gcc -L. -lasm -o exec test/main.c
	@echo "\033[0m"
	./exec

.PHONY: all re clean fclean test bonus
