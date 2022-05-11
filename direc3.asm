;prints 'ba' while given input is 'ab'

dosseg
.model small
.stack 100h
.data
    var dw 'ab'
.code
 
main proc

    mov ax, @data
    mov ds, ax

    mov dx, var
    mov ah, 2
    int 33
    mov dl, dh
    int 33
    mov ah, 4ch
    int 21h
main endp
end main