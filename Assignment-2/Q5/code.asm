.model small
.stack 100h


.code
main proc
         
    mov ax, 1000h
    mov ds, ax
    
    mov ax, 1234h    ;push 1234
    push ax 
    
    mov ax, 0000h    ;reset ax
    pop ax           ;pop back to ax
    
    
    mov ax, 4c00h
    int 21h
main endp
end main
