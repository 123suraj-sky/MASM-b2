dosseg
.model small
.stack 100h
.data
    var dd 'abcd'
.code
 
main proc

    mov ax, @data
    mov ds, ax

    ; How to write below two codes such that it will print desired result
    ; mov cx, var
    ; mov bx, var
    
    mov ah, 2
    int 33
    mov dl, cl
    int 33
    mov dl, ch
    int 33
    mov dl, bl
    int 33
    mov dl, bh
    int 33

    mov ah, 4ch
    int 21h
main endp
end main