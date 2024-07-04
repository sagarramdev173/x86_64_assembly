; This program demostates branching instruction ,if ecx less than 100 than it jumps to skip label
global _start

section .text
_start:
    mov ecx, 90 ;   set ecx to 99
    mov ebx, 42 ;   exit status is 42
    mov eax, 1;     sys_exit system call
    cmp ecx, 100;   comapre ecx value to 100
    jl skip;        jump if less than(last command comparsion)
    mov ebx, 13;    exit status 13      
skip:
    int 0x80;       tigger system call

