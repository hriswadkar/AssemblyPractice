.model small
.stack 100h

.data
	num dw 0123h
	sum db 00h
	
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov ax, num
	mov bl,10h
	mov cl, 00h
	
	div bl
	add cl, ah
	mov ah, 00h
	
	div bl
	add cl, ah
	mov ah, 00h
	
	div bl
	add cl, ah
	mov ah, 00h
	
	mov sum, cl
	mov ch, sum
	
	int 21h

end start