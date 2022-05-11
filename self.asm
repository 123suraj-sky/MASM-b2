dosseg
.model small
.stack 100h
.data
.code

main proc

mov ah,2
mov dl,'S'
int 21h

mov dl,'U'
int 21h

mov dl,'R'
int 21h

mov dl,'A'
int 21h

mov dl,'J'
int 21h

mov ah,4ch
int 21h
main endp
end main

