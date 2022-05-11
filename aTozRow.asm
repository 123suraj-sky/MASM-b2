dosseg
.model small
.stack 100h
.data
.code

main proc

    mov ah, 2
    mov dl, 97
    mov cl, 26
    start:
        int 33
        inc dl
    loop start

    mov ah, 4ch
    int 21h
main endp
end main



