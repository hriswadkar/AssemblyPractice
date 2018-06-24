; program to print a name with characters
dosseg
.model small
.stack 100h

.data


.code
start:
	mov dl, 'h'
	mov ah, 2
	int 21h
	
	mov dl, 'a'
	mov ah, 2
	int 21h
	
	mov dl, 'r'
	mov ah, 2
	int 21h
	
	
	mov ah, 4ch
	int 21h

end start