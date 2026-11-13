OBJ = main.o
BIN = awm
LIB = -fuse-ld=lld --rtlib=compiler-rt -lX11
CFLAGS = -Wall -Wextra

xephyr: awm
	Xephyr -br -ac -noreset -screen 1366x768 :1 &

awm: $(OBJ)
	clang -o $(BIN) $(OBJ) $(LIB)

%.o: %.c
	clang -c $< $(CFLAGS)

clean:
	rm $(BIN) $(OBJ)

main.o: main.c
