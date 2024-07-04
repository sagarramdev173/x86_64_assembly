; This program demonstrates the function call in assembly
section .data:
    main_data db "Hi from main"

section .text
global _start

_start:

    call foo              ; calling function foo
    ; Print modified string
    mov eax, 4             ; System call number for write
    mov ebx, 1             ; File descriptor 1 (stdout)
    mov ecx, main_data     ; loading stack pointer value to be printed
    mov edx, 12            ; Length of byte to be printed
    int 0x80               ; Invoke the system call

    ; Exit the program
    mov eax, 1             ; System call number for exit
    mov ebx, 0             ; Return 0 status
    int 0x80               ; Invoke the system call

foo:
    ; prolong function 
    push ebp                ; saving previous ebp onto the stack 
    mov ebp, esp            ; preserving stack pointer register

    ; Adding hey string in esp 
    sub esp, 4
    mov [esp], byte 'H'
    mov [esp+1], byte 'e'
    mov [esp+2], byte 'y'
    mov [esp+3], byte '! '
    
    ; print conetent of esp register
    mov eax, 4             ; System call number for write
    mov ebx, 1             ; File descriptor 1 (stdout)
    mov ecx, esp
    mov edx, 4
    int 0x80

    ; epilong of function 
    mov esp, ebp        ;moving callee value
    pop ebp             ; poping previous esp value to ebp 
    ret


