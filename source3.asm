.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	p1 BYTE "enter a number of length",0
	p2 BYTE "enter a number of  width",0

	l DWORD ?
	w DWORD ?
	display BYTE "the perimeter of rectangel equals  ",0
	result BYTE 11 DUP(?)
.CODE
MainProc PROC
	input p1,l,4
	input p2,w,4
	
	atod l
	add eax,eax
	
	mov l,eax

	atod w
	add eax,eax
	add eax,l
	dtoa result,eax
	output display ,result

	mov eax,0
	ret

MainProc ENDP
END