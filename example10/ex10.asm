global add

section .text
; add two integers function
add:    
    ; prolong function
    push ebp
    mov ebp, esp
    
    ; accesing the aguments given to us
    mov eax, [esp+8]
    mov ebx, [esp+12]

    ; adding two numbers
    add eax, ebx
    
    ; function epilog
    mov esp, ebp
    pop ebp
    ret
