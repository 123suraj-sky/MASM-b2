; use of 'jge' --> jump if greater or equal
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
        cmp dl, 'a'
        jge jumpHere
    
    mov ah, 4ch
    int 21h
main endp
end main