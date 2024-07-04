; This program demonstrates the use of printf system call it uses gcc as the compiler
; Here we need to define main insatead of _start because we are using gcc and it take cares of start address
global main 
extern printf

;   This section contains the string to be printed by printf and 0x0a means new line and 0x00 means null
section .data
    msg db "Testing printf %i .... ", 0x0a,0x00

section .text
main:
    ; function prolog
    push ebp 
    mov ebp, esp
    ; pushing arguments to stack
    push 123                  ; pushing integer
    push msg                 ; pushing string
    call printf                 ; calling printf
    ; return 0 by program
    mov eax, 0                ; return 0
    ; function epilog           
    mov esp, ebp                
    pop ebp
    ret
