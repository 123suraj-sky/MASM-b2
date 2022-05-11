dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah, 2

mov bl, 49
mov dl, 50
add dl, bl
sub dl, 48

mov ah, 2
int 21h

mov ah,4ch
int 21h
main endp
end main
