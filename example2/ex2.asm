global _start

section .data
	msg db "Hello world", 0x0a
	len equ $ - msg 	; calculating message length


section .text
_start:
 mov eax, 4	; sys_write system call
 mov ebx, 1	; stdout file descriptor
 mov ecx, msg	; bytes to write
 mov edx, len	; len of bytes to write
 int 0x80	; trigger system call
 mov eax, 1	; sys_call exit
 mov ebx, 0	; exit status is 0
 int 0x80
