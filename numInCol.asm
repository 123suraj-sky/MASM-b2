dosseg
.model small
; .stack 100h
.stack 256 ;as 100 in hexadecimal = 256 in decimal
.data
.code

main proc
    mov ah, 2
    ; mov ah, 10b ;as 2 in decimal is 10 in binary --> not recommended use 2 instead for this case
    mov dl, 48
    mov cl, 10

    start:
        int 33
        inc dl
    loop start

    mov ah, 4ch
    int 33
main endp
end main



