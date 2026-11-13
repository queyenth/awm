OBJ = main.o
BIN = awm
LIB = -fuse-ld=lld --rtlib=compiler-rt -lX11
CFLAGS = -Wall -Wextra

awm: $(OBJ)
	clang -o $(BIN) $(OBJ) $(LIB)

%.o: %.c
	clang -c $< $(CFLAGS)

clean:
	rm $(BIN) $(OBJ)

main.o: main.c
