.model small
.stack 100h
.data
	num dw 0052h, 0014h, 0068h, 0038h
	
.code
start:
	mov ax, @data
	mov ds, ax
	mov ax, 2
	
	loop2:
		mov cx, dx
		dec cx
		mov si, cx
		add si, si
		mov ax, num[si]
	
	loop1:
		cmp num[si-2], ax
		jbc next
		mov dl, num[si-2]
		mov num[si], dl
		dec si
		dec si
		jnz loop1
	next:
		mov num[si], ax
		inc dx
		cmp dx, 4
		jbc loop2
		
		mov ah, 4ch
		int 21h


end start
end