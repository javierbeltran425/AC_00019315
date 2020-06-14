org	100h

section .text
	    call 	texto  	

	    xor 	si, si 	
lupi:	

	call 	kb
	cmp 	al, "$" 
	je	    mostrar
	mov	    [350h+si], al
	inc 	si
	jmp 	lupi

texto:	

	mov 	ah, 00h
	mov	    al, 03h
	int 	10h
	ret

kb:	

    mov	    ah, 00h
	int 	16h
	ret		

mostrar:

	call 	w_strng_resultado

	int 20h

calc:   

	mov     ax, [350h]
	mov 	bx, [351h]
	add		ax, bx
    mov 	bx, [352h]
	add		ax, bx
    mov 	bx, [353h]
	add		ax, bx
	mov 	bx, [354h]
	add		ax, bx
	mov 	bl, 5d
	div 	bl

	cmp 	al, 1d
	je		w_strng

	cmp 	al, 2d
	je		w_strng2

	cmp 	al, 3d
	je		w_strng3

	cmp 	al, 4d
	je		w_strng4

	cmp 	al, 5d
	je		w_strng5

	cmp 	al, 6d
	je		w_strng6

	cmp 	al, 7d
	je		w_strng7

	cmp 	al, 8d
	je		w_strng8

	cmp 	al, 9d
	je		w_strng9

	cmp 	al, 10d
	je		w_strng10

	ret

w_strng:

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg
	int 10h
	ret

w_strng2:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len2
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg2
	int 10h
	ret

w_strng3:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len3
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg3
	int 10h
	ret

w_strng4:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len4
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg4
	int 10h
	ret

w_strng5:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len5
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg5
	int 10h
	ret

w_strng6:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len6
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg6
	int 10h
	ret

w_strng7:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len7
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg7
	int 10h
	ret

w_strng8:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len8
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg8
	int 10h
	ret

w_strng9:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len9
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg9
	int 10h
	ret

w_strng10:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len10
	mov 	dl, 10d
	mov 	dh, 7d
	push 	cs
	pop 	es
	mov 	bp, msg10
	int 10h
	ret

w_strng_resultado:   

	mov	    ah, 13h
	mov 	al, 01h
	mov 	bh, 00h
	mov 	bl, 00001111b
	mov 	cx, len11
	mov 	dl, 10d
	mov 	dh, 6d
	push 	cs
	pop 	es
	mov 	bp, msg11
	int 10h

	jmp 	calc
	ret

section .data
msg	db 	"Solo necesito el 0"
len 	equ	$-msg

msg2 db "Aun se pasa"
len2    equ	$-msg2

msg3 db "Hay salud"
len3    equ	$-msg3

msg4 db "Me recupero"
len4    equ	$-msg4

msg5 db "En el segudno"
len5    equ	$-msg5

msg6 db "Peor es nada"
len6    equ	$-msg6

msg7 db "Muy bien"
len7    equ	$-msg7

msg8 db "Colocho"
len8    equ	$-msg8

msg9 db "Siempre me esfuerzo"
len9    equ	$-msg9

msg10 db "Perfecto solo Dios"
len10    equ $-msg10

msg11 db "Resultado"
len11    equ $-msg11