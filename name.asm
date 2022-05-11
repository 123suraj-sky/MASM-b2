dosseg
.model small
.stack 100h
.data
.code
 
main proc

; this is a comment

    mov dl, 's'
    mov ah, 2
    int 33
    mov dl, 'k'
    int 33
    mov dl, 'y'
    int 33
    mov ah, 4ch
    int 21h
main endp
end main


