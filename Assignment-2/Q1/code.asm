.model small
.stack 100h

.data
    num1 db 25h       ; first 8-bit number
    num2 db 37h       ; second 8-bit number

.code
main proc
    
    mov ax, @data
    mov ds, ax

   
    mov al, num1
    add al, num2      ; AL = num1 + num2

    ; store result at absolute physical address 2000H
    mov ax, 2000h     ; segment = 0200H
    mov es, ax
    mov di, 0000h     ; offset = 0000H
    mov es:[di], al   

    mov ax, 4c00h
    int 21h
main endp
end main
