.model small
.stack 100h

.data
	num1 db 84H
	num2 db 28H
	res_lsb db 0
	res_msb db 0
	
.code
start:
	mov ax, @data
	mov ds, ax
	mov al, num1
	add al, num2
	daa
	jnc dn
	inc res_msb
	mov ah, res_msb
	
dn:
	mov res_lsb, al
	
	mov bl, res_lsb
	mov bh, res_msb
	
	mov ah, 4ch
	int 21h
	
end start
end