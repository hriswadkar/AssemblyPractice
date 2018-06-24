.MODEL SMALL
.STACK
.DATA
.CODE
MAIN:						; Below are comments
	MOV AH,09	; Offset of the message is in DX
	MOV AL,'X'
	MOV BH,00
	MOV BL,14H
	
	MOV CX,10D
	INT 10H
	
	MOV AH,4CH
	INT 21H


END MAIN