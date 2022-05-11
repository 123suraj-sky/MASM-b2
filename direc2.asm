;directives --> similar to variables in c

dosseg
.model small
.stack 100h
.data
    var dw 'ab'
.code

main proc
    mov ax, @data
    mov ds, ax
    mov bx, var
    mov ah,2
    mov dl, bh
    int 33
    mov dl, bl
    int 33
    mov ah, 4ch
    int 33
main endp
end main



