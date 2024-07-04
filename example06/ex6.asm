section .text
global _start

_start:
    ; writting 4 bytes to stack i.e push operation
    sub esp, 4
    mov [esp], byte 'H'
    mov [esp+1], byte 'e'
    mov [esp+2], byte 'y'
    mov [esp+3], byte '!'

    ; Print modified string
    mov eax, 4             ; System call number for write
    mov ebx, 1             ; File descriptor 1 (stdout)
    mov ecx, esp           ; loading stack pointer value to be printed
    mov edx, 4             ; Length of byte to be printed
    int 0x80               ; Invoke the system call

    ; Exit the program
    mov eax, 1             ; System call number for exit
    mov ebx, 0             ; Return 0 status
    int 0x80               ; Invoke the system call


