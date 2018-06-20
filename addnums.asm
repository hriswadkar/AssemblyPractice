.model small
.stack 100h

.data
num1 dd 12345678h
num2 dd 11111112h
tot dd ?

.code
start:


    mov ax, @data
    mov ds, ax

    mov ax, word ptr num1
    mov bx, word ptr num1+2
    mov cx, word ptr num2
    mov dx, word ptr num2+2

    add ax, cx
    adc bx, dx

    mov word ptr tot, ax
    mov word ptr tot+2, bx


    mov ah, 4ch
    int 21h

end start