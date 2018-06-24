.model small

.stack 100h

.data
	num1 db 1001b
	res db ?
	
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov al, num1
	not al
	;mov bl, num2
	;add al, 1
	mov res, al
	mov cl, res
	
	int 21h
	end start