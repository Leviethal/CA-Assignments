.model small
.stack 100h

.code
main proc
    
    mov ax, 1000h
    mov ds, ax

    mov di, 0021h     
    mov al, 05h
    mov [di], al
    mov bx, 0020h
    mov di, 0001h
    mov cx, [bx+di]
    
    
    mov ax, 4c00h
    int 21h
main endp
end main
