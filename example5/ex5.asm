section .data
    my_data db 'hello, World!', 0   ; Null-terminated string

section .text
global _start

_start:
    ; Read access example
    mov eax, my_data       ; Load address of my_data into eax
    mov ebx, [eax]         ; Load the first byte of my_data into ebx (reading 'H')

    ; Write access example
    mov ecx, my_data       ; Load address of my_data into ecx
    mov byte [ecx], 'H'    ; Change 'h' to 'H' in the string "Hello, World!"

    ; Print modified string
    mov eax, 4             ; System call number for write
    mov ebx, 1             ; File descriptor 1 (stdout)
    mov ecx, my_data       ; Pointer to the modified string
    mov edx, 13            ; Length of the modified string including null terminator
    int 0x80               ; Invoke the system call

    ; Exit the program
    mov eax, 1             ; System call number for exit
    mov ebx, 0             ; Return 0 status
    int 0x80               ; Invoke the system call


