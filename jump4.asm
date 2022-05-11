; use of 'jle' --> jump if lesser or equal

dosseg
.model small
.stack 100h
.data
.code
 
main proc
    mov dl, 'a'
    mov ah, 2
    jumpHere:
        int 33
        inc dl
        cmp dl, 'e'
        jle jumpHere
    mov ah, 4ch
    int 21h
main endp
end main