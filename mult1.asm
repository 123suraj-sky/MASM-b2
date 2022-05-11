; in below program for storing output its register will automatically converted to ax from al
; it is giving warning for the same thing

dosseg
.model small
.stack 100h
.data
.code

main proc
    mov al, 4
    mov bl, 4
    mul bl
    aam

    mov cx, al
    mov ah, 2
    mov dl, ch
    add dl, 48
    int 33
    mov dl, cl
    add dl, 48
    int 33

    mov ah, 4ch
    int 33
main endp
end main













