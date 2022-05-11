dosseg
.model small
.stack 100h
.data
.code

main proc
    mov ax, 5
    mov bl, 6
    div bl

    mov cx, ax ; "ch" store remainder and "cl" store quotient
    mov ah, 2
    mov dl, 'R'
    int 21h
    mov dl, ':'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ch
    add dl, 48
    int 33
    mov dl, ','
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'Q'
    int 21h
    mov dl, ':'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, cl
    add dl, 48
    int 33
    mov ah, 4ch
    int 33
main endp
end main




