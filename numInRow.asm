dosseg
.model small
.stack 100h
.data
.code

main proc
    mov ah, 2
    mov dl, 48
    mov cl, 10

    start:
        int 33
        mov bl, dl
        mov dl, 10
        int 33
        mov dl, 13
        int 33
        mov dl, bl
        inc dl
    loop start

    mov ah, 4ch
    int 33
main endp
end main



