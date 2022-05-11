dosseg
.model small
.stack 100h
.data
.code
 
main proc

    mov ah, 2
    mov dl, 65
    mov cl, 26 ; "cl" will decrement in every cycle

    ; ; print A to Z in same line
    ; start:
    ;     int 21h
    ;     inc dl
    ; loop start

    ; print A to Z in different lines
    start:
        int 21h
        mov bl, dl
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        mov dl, bl
        inc dl
    loop start

    mov ah, 4ch
    int 21h
main endp
end main