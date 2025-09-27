.model small
.stack 100h


.code
main proc
         
    mov ax, 1000h
    mov ds, ax
    
    mov ax, 02h
    mov bx, 01h
    shr ax, 1  
    mov [di], ax

    shl bx, 1
    inc di
    mov [di],bx
    
    mov ax, 4c00h
    int 21h
main endp
end main
