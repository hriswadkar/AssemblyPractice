; divide 32 bit number by 16 bit
.model small
.stack 100h
.data
	dividend dd 0001ffffh
	divisor dw 000fh
	quo dw 0
	rem dw 0
	
.code
start:
	mov ax, @data
	mov ds, ax
	mov ax, word ptr dividend
	mov dx, word ptr dividend+2
	div divisor
	mov quo, ax
	mov bx, quo
	mov rem, dx
	mov cx, rem
	
	mov ah, 4ch
	int 21h
	
end start
end