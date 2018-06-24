.model small
.stack 100h

.data
	num1 dw 0ffffh
	num2 dw 0ffffh
	res_lsb dw 0000h
	res_msb dw 0000h

.code
start:
	mov ax, @data
	mov ds, ax
	
	mov ax, num1
	mul num2
	mov res_msb, ax
	mov res_lsb, dx
	
	
	mov bx, res_msb
	mov cx, res_lsb
	
	
	mov ah, 4ch
	
	int 21h
end start
end