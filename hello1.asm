.MODEL SMALL
.STACK
.DATA
	Message DB "Hello World!$"
.CODE
MAIN:						; Below are comments
	MOV DX,OFFSET Message	; Offset of the message is in DX
	MOV AX,SEG Message
	MOV DS,AX
	
	MOV AH,9D
	INT 21H
	
	MOV AH,4CH
	INT 21H


END MAIN