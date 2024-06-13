all: test_rl test_asm

test_rl: test_rl.c
	cc -o test_rl test_rl.c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11


test_asm: test.o
	ld -o test test.o -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc
test.o: test.asm
	fasm test.asm


clean:
	rm test_rl test.o test
