.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p BYTE "enter you a number",0
	x DWORD ?
	y DWORD ?
	z DWORD ?
	display BYTE "the value is ",0
	result BYTE 11 DUP(?)
.CODE
MainProc PROC
	input p,x,4
	input p,y,4
	input p,z,4
	atod x
	mov x,eax

	atod y
	add eax,x
	mov x,eax
	mov eax,2
	mul x
	mov x,eax

	atod z
	add eax,x
	
	dtoa result,eax
	output display ,result

	mov eax,0
	ret

MainProc ENDP
END