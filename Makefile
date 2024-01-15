# Makefile pour compiler un wrapper SWIG 4.2.0 sur Windows 10 avec MinGW

CC		= gcc
CFLAGS	= -I inc -Wall -Wextra

SWIG_DIR = swigwin-4.2.0

NAME = test.exe

SRC = src\example.c

OBJ = $(SRC:.c=.o)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -c src\main.c -o src\main.o
	$(CC) $(CFLAGS) src\main.o $(OBJ) -o $(NAME)

swig: $(OBJ)
# Génère example.py et example_wrap.c
	$(SWIG_DIR)\swig -python swg\example.i
# Génère example_wrap.o
	$(CC) $(CFLAGS) -c -I $(PYTHON_INCLUDE) swg\example_wrap.c -o swg\example_wrap.o
# Génère la librairie partagée _example.pyd (MinGW ne fonctionne qu'avec l'extension .pyd !)
	$(CC) -shared $(OBJ) swg\example_wrap.o $(PYTHON_LIB) -o swg\_example.pyd

all: $(NAME) swig

clean:
	del src\main.o
	del $(OBJ)
	del swg\example.py
	del swg\example_wrap.c
	del swg\example_wrap.o

fclean: clean
	del swg\_example.pyd $(NAME)

re: fclean all

.PHONY: all clean fclean re swig $(NAME)