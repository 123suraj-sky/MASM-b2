; why no other file is created
; how to create file

dosseg
.model small
.stack 100h
.data
.code
 
main proc
    mov ah, 3ch
    int 33
    mov ah, 1
    int 33
    mov dl, al
    mov ah, 2
    int 33
    mov ah, 3eh
    int 33
    mov ah, 4ch
    int 21h
main endp
end main