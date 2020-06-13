org	100h

section .text
	    call 	texto  	;iniciamos modo texto

	    xor 	si, si 	;lo mimso que: mov si, 0000h
lupi:	call 	kb
	    cmp 	al, "$" ;   "h o l a $"
			;si; 0 1 2 3 4
	    je	    mostrar
	    mov	    [300h+si], al ; CS:0300h en adelante
	    inc 	si
	    jmp 	lupi

mostrar:call 	calc

	    ;call 	kb	; solo detenemos la ejecución
        int 20h

texto:	mov 	ah, 00h
	    mov	    al, 03h
	    int 	10h
	    ret

kb:	    mov	    ah, 00h ;subrutina que detiene la ejecución hasta recibir
	    int 	16h	;algun carácter en el buffer del teclado
	    ret		;este carácter lo guarda en el registro AL

calc:   mov     al, [300h]

        cmp     al, 31h
        jbe     conv1

        call    w_strng3

        ;cmp     al, 0001h
        ;jbe     w_strng

        ;cmp     al, 2d
        ;jbe     w_strng2
        
        ret

w_strng:mov	    ah, 13h
	    mov 	al, 01h ; asigna a todos los caracteres el atributo de BL,
			; actualiza la posición del cursor
	    mov 	bh, 00h ; número de página
	    mov 	bl, 00001111b ; atributo de caracter
	    mov 	cx, len ; tamaño del string (SI, porque todavía guarda la última posición)
	    mov 	dl, 10h ; columna inicial
	    mov 	dh, 7h	; fila inicial
	; Como esta interrupción saca el string de ES:BP, tenemos que poner los valores correcpondientes
	    push 	cs ; Segmento actual en el que está guardado nuestro string
	    pop 	es ; Puntero al segmento que queremos 
	    mov 	bp, msg ; Dirección inicial de nuestra cadena de texto
	; ES:BP equals CS:300h 
	    int 20h

w_strng2:   mov	    ah, 13h
	        mov 	al, 01h ; asigna a todos los caracteres el atributo de BL,
		    	; actualiza la posición del cursor
	        mov 	bh, 00h ; número de página
	        mov 	bl, 00001111b ; atributo de caracter
	        mov 	cx, len2 ; tamaño del string (SI, porque todavía guarda la última posición)
	        mov 	dl, 10h ; columna inicial
	        mov 	dh, 7h	; fila inicial
	            ; Como esta interrupción saca el string de ES:BP, tenemos que poner los valores correcpondientes
	        push 	cs ; Segmento actual en el que está guardado nuestro string
	        pop 	es ; Puntero al segmento que queremos 
	        mov 	bp, msg2 ; Dirección inicial de nuestra cadena de texto
	            ; ES:BP equals CS:300h 
	        int 20h

w_strng3:   mov	    ah, 13h
	        mov 	al, 01h ; asigna a todos los caracteres el atributo de BL,
		    	; actualiza la posición del cursor
	        mov 	bh, 00h ; número de página
	        mov 	bl, 00001111b ; atributo de caracter
	        mov 	cx, len3 ; tamaño del string (SI, porque todavía guarda la última posición)
	        mov 	dl, 10h ; columna inicial
	        mov 	dh, 7h	; fila inicial
	            ; Como esta interrupción saca el string de ES:BP, tenemos que poner los valores correcpondientes
	        push 	cs ; Segmento actual en el que está guardado nuestro string
	        pop 	es ; Puntero al segmento que queremos 
	        mov 	bp, msg3 ; Dirección inicial de nuestra cadena de texto
	            ; ES:BP equals CS:300h 
	        int 20h
conv1:  
        ;call    w_strng
        mov     al, 1d
        ;call    w_strng2
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
len10    equ	$-msg10