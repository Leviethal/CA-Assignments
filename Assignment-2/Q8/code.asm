.model small
.stack 100h

.data
    array dw 10h, 20h, 30h, 40h, 50h
    result dw ?
    
.code
main proc
         
    mov ax, @data
    mov ds, ax
    
    lea di, array  
    mov ax, 0000h
    mov cx, 05h    ;size of array

loop_add:
    add ax, [di]
    add di, 2
    loop loop_add
    
    mov result, ax
    
    mov ax, 4c00h
    int 21h
main endp
end main
