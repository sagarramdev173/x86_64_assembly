; This program demostates loop 
global _start


section .text
_start:
    mov ebx, 1    ;   it return the status of the program
    mov ecx, 4    ;   number of itreations

label:
    add ebx,ebx   ;    ebx+=ebx   
    dec ecx       ;    ecx-=1  
    cmp ecx, 0    ;    compare ecx with 0
    jg label      ;    jump to label if greater
    mov eax, 1    ;     tigger sys_exit system call
    int 0x80        

