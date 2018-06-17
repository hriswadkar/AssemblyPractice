.model small
.stack 100h

.data
dexter db "Hello World!$"

.code
start:

    mov ax, @data
    mov ds, ax
    mov ah, 09h
    mov dx, offset dexter
    int 21h

    mov ah, 4ch
    int 21h
    

end start