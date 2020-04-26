;Ejercicio 1

        org     100h

        mov     ax, 0000h   ; Inicialización de las variables para limpiarlas
        mov     bx, 0000h
        mov     dx, 0000h


        mov     ax, 1d
        mov     bx, 9d
        add     ax, bx 
        mov     bx, 3d
        add     ax, bx
        mov     bx, 1d
        add     ax, bx
        mov     bx, 5d
        add     ax, bx
        mov     bx, 5d
        div     bx

        mov     cl, "H"
        mov     [200h], cl
        mov     cl, "A"
        mov     [201h], cl
        mov     cl, "Y"
        mov     [202h], cl
        mov     cl, " "
        mov     [203h], cl
        mov     cl, "S"
        mov     [204h], cl
        mov     cl, "A"
        mov     [205h], cl 
        mov     cl, "L"
        mov     [206h], cl 
        mov     cl, "U"
        mov     [207h], cl 
        mov     cl, "D"
        mov     [208h], cl

        ; Ejercicio 2

        mov     ax, 0000h ; Inicializamos ax
        mov     bx, 0000h
        mov     dx, 0000h
        mov     di, 0d
        mov     cx, 11d
        
        mov     ax, 2d
lupi:   mov     bx, 2d
        mul     bx

        cmp     ax, 0100h
        JBE     inst1
        inc     di

inst1:  mov     [210h + di], ax
        inc     di


        loop    lupi 


    ; Ejercicio 3

        mov     ax, 0000h
        mov     bx, 0000h
        mov     cx, 0000h
        mov     dx, 0000h
        mov     di, 3d
        
        mov     ax, 0d
        mov     bx, 1d 
        mov     cx, 12d

        mov     [220h], ax
        mov     [221h], bx

        add     bx,ax
        mov     [222h], bx
        mov     ax,bx


inst2:  add     bx,ax
        mov     [220h + di], bx
        mov     dx,bx
        sub     dx,ax
        mov     ax,dx
        inc     di

        loop    inst2

        int  20h