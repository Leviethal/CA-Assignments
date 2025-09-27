.model small
.stack 100h


.code
main proc
    
    mov ax, 1000h
    mov ds, ax

    mov di, 0020h     
    mov al, 0ah
    mov [di], al
    
    
    mov ax, 4c00h
    int 21h
main endp
end main
