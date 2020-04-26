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

        int     20h
