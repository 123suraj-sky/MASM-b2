; use of 'jg' --> jump if greater

dosseg
.model small
.stack 100h
.data
.code
 
main proc
    mov dl, 'e'
    mov ah, 2
    jumpHere:
        int 33
        dec dl
        cmp dl, 96 ; 96 is ASCII before 'a'
        jg jumpHere
    mov ah, 4ch
    int 21h
main endp
end main