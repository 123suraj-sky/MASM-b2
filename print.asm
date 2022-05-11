dosseg
.model small
.stack 100h
.data
.code

main proc

    mov dl,'H'
    mov ah,2
    int 21h
    
    mov dl, 4  ;it will print corresponding ASCII character to 4
    int 21h
    
    mov dl, 10 ;it is line feed --> It works similar to \n in c
    int 21h
    
    ;run below after commenting above code
    mov dl, 13 ;it will place the cursor at starting position it will overwrite the character previous printed if not used with "mov dl, 10"
    int 21h
    
    
    mov dl,'L'
    int 21h
    
    mov dl,'O'
    int 21h

    mov dl, 10
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'k'
    int 21h
    mov dl,'y'
    int 21h

    mov ah,4ch
    int 21h
main endp
end main



