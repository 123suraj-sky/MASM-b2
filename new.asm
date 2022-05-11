;trying new things in asm

dosseg
.model small
.stack 100h
.data
.code
 
main proc

    mov ah, 8 ;takes input without echo
    int 33
    mov dl, al
    mov ah, 2
    int 33
    mov ah, 4ch
    int 21h
main endp
end main