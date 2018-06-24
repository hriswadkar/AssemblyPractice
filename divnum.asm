;division of 16 bit number by 8 bit number
.model small
.stack 100h

.data
	n1 dw 0020h
	n2 db 03h
	quo db 00h
	rem db 00h
	
.code
start:
	mov ax, @data
	mov ds, ax
	mov ax, n1
	mov bl, n2
	div bl
	mov quo, al
	mov rem, ah
	mov cl, quo
	mov ch, rem
	int 21h
	
end start
end