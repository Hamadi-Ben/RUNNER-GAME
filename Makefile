NAME	=	CORTEIZ

CC = gcc

SRC		=	main.c\
			draw.c\
			init.c\
			input.c

OBJ 	=	$(SRC:.c=.o)

CFLAGS  +=  -I./include
CFLAGS	+=  -W -Werror -Wall -Wextra

LIBS 	+=  -lSDL2 -lSDL2_image

all: 		$(NAME)

$(NAME):	$(OBJ)
	$(CC)	$(OBJ)	$(LIBS)		$(CFLAGS)	-o	$(NAME)

clean:
	rm -f $(OBJ)

fclean:		clean
	rm -f $(NAME)

.PHONY: all clean

re: fclean all

