.model small
.stack 100h


.code
main proc
         
    mov ax, 1000h
    mov ds, ax
    
    mov ax, 1234h   
    push ax 
    
    mov ax, 5678h    
    add ax, 1111h
    pop bx
    
    ;ax = 6789
    ;bx = 1111
    
    mov ax, 4c00h
    int 21h
main endp
end main
