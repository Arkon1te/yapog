
test: test.o
	ld -o test test.o -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc

test.o: test.asm
	fasm main.asm

