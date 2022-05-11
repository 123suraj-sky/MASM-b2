; use of 'je' and 'jmp'
; 'je' --> jump if not equal
; 'jmp' --> jump

dosseg
.model small
.stack 100h
.data
.code

main proc
    mov dl, 'a'
    mov ah, 2
    here1:
        int 33
        inc dl
        cmp dl, 'f'
        je here2
        jmp here1
    here2:
        mov ah, 4ch
        int 33
main endp
end main

