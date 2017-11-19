.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	h1 BYTE "enter the number of pennies",0
	h2 BYTE "enter the number of nickels",0
	h3 BYTE "enter the number of dimes",0
	h4 BYTE "enter the number of quarter",0
	h5 BYTE "enter the number of fifty_cent",0
	h6 BYTE "enter the number of dollar",0
	p DWORD ?
	n DWORD ?
	dim DWORD ?
	q DWORD ?
	f DWORD ?
	do DWORD ?
	display BYTE "the value is ",0
	result BYTE 11 DUP(?) , " dollars "
	remainder BYTE 11 DUP(?)," cents"
.CODE
MainProc PROC
	input h1,p,33
	input h2,n,32
	input h3,dim,32
	input h4,q,32
	input h5,f,32
	input h6,do,32
	
	atod p
	mov p,eax
	
	atod n
	mov ebx,5
	mul ebx
	add p,eax
	
	atod dim
	mov ebx,10
	mul ebx
	add p,eax
	
	atod q
	mov ebx,25
	mul ebx
	add p,eax

	atod f
	mov ebx,50
	mul ebx
	add p,eax

	atod do
	mov ebx,100
	mul ebx
	add p,eax

	mov eax,p
	cdq
	mov ebx,100
	div ebx

	dtoa result,eax
	dtoa remainder,edx

	output display ,result

	mov eax,0
	ret

MainProc ENDP
END