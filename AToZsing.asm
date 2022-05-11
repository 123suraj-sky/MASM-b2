dosseg
.model small
.stack 100h
.data
.code
 
main proc

    mov ah, 2
    mov dl, 65
    mov cl, 26

    ; print A to Z in same line
    start:
        int 21h
        inc dl
    loop start

    mov ah, 4ch
    int 21h
main endp
end main