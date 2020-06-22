org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di

	mov 	si, 125d ; X -> Columna
	mov 	di, 25d ; Y -> Fila
	call 	linea_h

	mov		si, 125d ; X -> Columna
	mov 	di, 26d ; Y -> Fila
	call 	linea_v

	mov		si, 174d ; X -> Columna
	mov 	di, 26d ; Y -> Fila
	call 	linea_v

	mov 	si, 125d ; X -> Columna
	mov 	di, 30d ; Y -> Fila
	call 	linea_h2

	mov 	si, 155d ; X -> Columna
	mov 	di, 30d ; Y -> Fila
	call 	linea_h3

	mov		si, 145d ; X -> Columna
	mov 	di, 30d ; Y -> Fila
	call 	linea_v2

	mov		si, 155d ; X -> Columna
	mov 	di, 30d ; Y -> Fila
	call 	linea_v3

	mov 	si, 125d ; X -> Columna
	mov 	di, 75d ; Y -> Fila
	call 	linea_h4

	mov 	si, 130d ; X -> Columna
	mov 	di, 70d ; Y -> Fila
	call 	linea_h5

	mov		si, 125d ; X -> Columna
	mov 	di, 60d ; Y -> Fila
	call 	linea_v4

	mov		si, 130d ; X -> Columna
	mov 	di, 60d ; Y -> Fila
	call 	linea_v5

	mov 	si, 125d ; X -> Columna
	mov 	di, 60d ; Y -> Fila
	call 	linea_h6

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:

	mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	

	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_h: 
lupi_h:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 175d
	jne 	lupi_h
	ret

linea_h2: 
lupi_h2:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 145d
	jne 	lupi_h2
	ret

linea_h3: 
lupi_h3:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 175d
	jne 	lupi_h3
	ret

linea_h4: 
lupi_h4:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 156d
	jne 	lupi_h4
	ret

linea_h5: 
lupi_h5:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 146d
	jne 	lupi_h5
	ret

linea_h6: 
lupi_h6:	
	
	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 130d
	jne 	lupi_h6
	ret

linea_v:
lupi_v:

	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 30d
	jne 	lupi_v
	ret

linea_v2:
lupi_v2:

	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 70d
	jne 	lupi_v2
	ret

linea_v3:
lupi_v3:

	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 75d
	jne 	lupi_v3
	ret

linea_v4:
lupi_v4:

	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 75d
	jne 	lupi_v4
	ret

linea_v5:
lupi_v5:

	mov 	cx, si ; Columna 
	mov		dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 70d
	jne 	lupi_v5
	ret

kb: 	

	mov	ah, 00h
	int 	16h
	ret

section .data