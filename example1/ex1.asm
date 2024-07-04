global _start

_start:
	mov eax, 1
	mov ebx, 42
	sub ebx, 32
	int 0x80
