; asmsyntax=fasm

format ELF64

section '.text' executable

public _start
extrn printf
extrn _exit

_start:
	mov rdi, msg
	call printf
	mov rdi, 0
	call _exit

section '.data'
msg: db "Hello, world!",10,0
