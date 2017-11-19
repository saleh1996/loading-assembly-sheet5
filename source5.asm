.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	h1 BYTE "enter first number",0
	h2 BYTE "enter second number",0
	h3 BYTE "enter third number",0
	h4 BYTE "enter fourth number",0
	summation BYTE "the summation of result is : ",0
	average BYTE "the average of result is : ",0
	n1 DWORD ?
	n2 DWORD ?
	n3 DWORD ?
	n4 DWORD ?
	display BYTE "the value is ",0  
	sum BYTE 11 DUP(?),0

	avg BYTE 11 DUP(?) ," , reminder equal"
	remainder BYTE 11 DUP(?)
	
.CODE
MainProc PROC
	input h1,n1,32
	input h2,n2,32
	input h3,n3,32
	input h4,n4,32
	atod n1
	mov n1,eax
	atod n2
	mov n2,eax
	atod n3
	mov n3,eax
	atod n4
	add eax,n3
	add eax,n2
	add eax,n1
	dtoa sum,eax
	output summation ,sum

	mov ebx,4
	cdq
	div ebx
	dtoa avg,eax
	dtoa  remainder,edx
	output average ,avg

	mov eax,0
	ret

MainProc ENDP
END