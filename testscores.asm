INCLUDE Irvine32.inc
Title Home Work 6 Test scores
;ANDREY ILKIV
.data
	testScore	dw	0
	fiveScores	db	"Enter five test scores.",0
	fail	db	"Sorry but your grade is lower than a 50 you have failed.",0
	avgMsg	db	"Enter a test score: ",0
	AA	db	"GREAT JOB YOU HAVE A PERFECT SCORE: A+ ",0
	A	db	"Your grade is a(n): A ",0
	B	db	"Your grade is a(n): B ",0
	R	db	"Your grade is a(n): C ",0
	D	db	"Your grade is a(n): D ",0
	F	db	"Your grade is a(n): F ",0


.code
main PROC
	mov	edx,offset fiveScores
	call	writestring
	call	crlf
	mov	ecx,5
	Loop1:
	mov	edx,offset avgMsg
	call	writestring
	call	crlf
	call	readint
	mov	testScore,ax
	sub	eax,eax
	call	compare
	loop	Loop1
	jmp	ENDITALL
;-------------------------------
compare proc
	cmp	testScore,100
	je	GradeAA
	cmp	testScore,90
	jge	GradeA
	cmp	testScore,80
	jge	GradeB
	cmp	testScore,70
	jge	GradeC
	cmp	testScore,60
	jge	GradeD
	cmp	testScore,50
	jge	GradeF
	cmp	testScore,50
	jl	Failed
compare endp
;------------------------------
GradeAA proc
	sub	edx,edx
	mov	edx,offset AA
	call	writestring
	call	crlf
	call	crlf
	ret
GradeAA endp
;------------------------------
GradeA proc
	sub	edx,edx
	mov	edx,offset A
	call	writestring
	call	crlf
	call	crlf
	ret
GradeA endp
;-------------------------------
GradeB proc
	sub	edx,edx
	mov	edx,offset B
	call	writestring
	call	crlf
	call	crlf
	ret
GradeB endp
;--------------------------------
GradeC proc
	sub	edx,edx
	mov	edx,offset R
	call	writestring
	call	crlf
	call	crlf
	ret
GradeC endp
;--------------------------------
GradeD proc
	sub	edx,edx
	mov	edx,offset D
	call	writestring
	call	crlf
	call	crlf
	ret
GradeD endp
;--------------------------------
GradeF proc
	sub	edx,edx
	mov	edx,offset F
	call	writestring
	call	crlf
	call	crlf
	ret
GradeF endp
;--------------------------------
Failed	proc
	mov	edx,offset fail
	call	writestring
	call	crlf
	call	crlf
	ret
Failed	endp
;--------------------------------
ENDITALL:
exit
main ENDP
END main