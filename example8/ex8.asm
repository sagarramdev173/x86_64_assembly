; This program demonstrates the function call in assembly and argument passing and returning value from function


section .text
global _start

_start:

    push 1
    push 8
    call multiply              ; calling function foo 

    ; Exit the program
    mov eax, 1             ; System call number for exit     
    int 0x80               ; Invoke the system call

multiply:
    ; prolong function 
    push ebp                ; saving previous ebp onto the stack 
    mov ebp, esp            ; preserving stack pointer register

    ; accesing the aguments given to us
    mov ebx, [ebp+8]
    mov eax, [ebp+12]
    
    
loop:    
    add ecx,ebx
    dec eax
    jnz loop
    

    mov ebx,ecx

    ; epilong of function 
    mov esp, ebp        ;moving callee value
    pop ebp             ; poping previous from stack to ebp 
    ret


