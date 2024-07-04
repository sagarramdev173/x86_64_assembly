global _start

_start:
	mov eax, 1			; sys_exit system call
	mov ebx, 42			; exit status
	sub ebx, 32			; exit status - 32
	int 0x80			; trigger system call
