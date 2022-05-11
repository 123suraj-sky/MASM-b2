;addition of two no.s given directly given

dosseg
.model small
.stack 100h
.data
.code

main proc

    mov bl, 49 ;ASCII character corresponding to 49 is 1
    mov dl, 50 ;ASCII character corresponding to 50 is 2
    add dl, bl ;it gives 99 --> Corresponding ASCII character is 'c'
    sub dl, 48 ;we have to subtract 48 from it to get required result

    ;printing result
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main

