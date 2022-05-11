dosseg
.model small
.stack 100h
.data
.code

main proc

    ; taking first input
    mov ah, 1
    int 21h
    mov bl, al

    ; printing new line
    mov ah, 2
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ;taking second input
    mov ah, 1
    int 21h
    ; performing subtraction
    sub bl, al
    add bl, 48

    ; printing new line
    mov ah, 2
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    ; printing output
    mov dl, 'd'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'f'
    int 21h
    mov dl, 'f'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'r'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 58 ; prints :(colon)
    int 21h
    mov dl, 32 ; prints space
    int 21h
    mov dl, bl
    int 21h
    mov ah, 4ch
    int 21h
main endp
end main

;don't press enter while entering the input
;just write two no.s simultanously