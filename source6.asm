.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	h1 BYTE "enter weight 1",0
	h2 BYTE "enter grade 1",0

	h3 BYTE "enter weight 2",0
	h4 BYTE "enter grade 2",0

	h5 BYTE "enter weight 3",0
	h6 BYTE "enter grade 3",0

	h7 BYTE "enter weight 4",0
	h8 BYTE "enter grade 4",0

	grade1 DWORD ?
	weight1 DWORD ?

	grade2 DWORD ?
	weight2 DWORD ?

	grade3 DWORD ?
	weight3 DWORD ?

	grade4 DWORD ?
	weight4 DWORD ?

	weighted_sum DWORD ?
	sum_of_weights DWORD ?

	w BYTE " weighted sum equals ",0 
	s BYTE "sum of weights equals ",0 
	wa BYTE "weighted average equals ",0
	result BYTE 11 DUP(?)

.CODE
MainProc PROC
	input h1,weight1,32
	input h2,grade1,32
	input h3,weight2,32
	input h4,grade2,32
	input h5,weight3,32
	input h6,grade3,32
	input h7,weight4,32
	input h8,grade4,32

	atod weight1
	mov weight1,eax
	mov sum_of_weights,eax
	atod grade1
	mul weight1
	mov weighted_sum,eax

	atod weight2
	add sum_of_weights,eax
	mov weight2,eax
	atod grade2
	mul weight2
	add weighted_sum,eax

	atod weight3
	add sum_of_weights,eax
	mov weight3,eax
	atod grade3
	mul weight3
	add weighted_sum,eax

	atod weight4
	add sum_of_weights,eax
	mov weight4,eax
	atod grade4
	mul weight4
	add weighted_sum,eax
	
	mov eax , weighted_sum
	dtoa result ,eax
	output w,result

	mov ecx,sum_of_weights
	dtoa result,ecx
	output s,result

	cdq
	div ecx
	dtoa result,eax
	output wa, result
	ret
MainProc ENDP
END