; use of 'jne'
; 'jne' --> jump if not equal

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
        cmp dl, 'f'
        jne jumpHere

    mov ah, 4ch
    int 33
main endp
end main




