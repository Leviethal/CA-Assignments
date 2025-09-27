.model small
.stack 100h


.code
main proc
         
    mov ax, 1000h
    mov ds, ax
    
    mov ax, 1111h
    mov bx, 2222h
    mov cx, 3333h
    
    push ax
    push bx
    push cx
    
    pop ax
    pop bx
    pop cx
    
    
    mov ax, 4c00h
    int 21h
main endp
end main
