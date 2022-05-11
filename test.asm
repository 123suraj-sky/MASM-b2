dosseg
.model small
.stack 100h
.data
.code

main proc

mov dl,'H'
mov ah,2
int 21h

mov dl,'E'
int 21h

mov dl,'L'
int 21h

mov dl,'L'
int 21h

mov dl,'O'
int 21h

mov ah,4ch
int 33
main endp
end main

