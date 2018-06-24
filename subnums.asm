.model small

.stack 100h

.data
	num1 db 1010b
	num2 db 0101b
	res db 0000b
	
.code
start:
	mov ax, @data
	mov ds, ax
	
	mov al, num1
	mov bl, num2
	sub al, bl
	mov res, al
	mov cl, res
	
	int 21h
	end start