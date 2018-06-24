.model small
.stack 100h

.data
	num db 99h, 12h, 56h, 45h, 36h
	
.code
start:
	mov ax, @data
	mov ds, ax
	mov ch, 04h
	
	up2:
		mov cl, 04h
		lea SI, num
	
	up1:
		mov al, [SI]
		mov bl, [SI+1]
		cmp al, bl
		jc down
		mov dl, [SI+1]
		XCHG [SI], dl
		mov [SI+1], dl
	
	down:
		inc SI
		dec cl
		jnz up1
		dec ch
		jnz up2
		
		;mov ah, 4ch
		
		int 21h
		
end start
end