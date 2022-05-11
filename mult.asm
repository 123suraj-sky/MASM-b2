dosseg
.model small
.stack 100h
.data
.code

main proc
    mov ax, 4
    ; mov al, 4
    ;Question: What is the difference between using ax & al in above two lines
    ; Although there is a warning but there is no any change in final result
    mov bl, 4
    mul bl
    aam

    mov cx, ax
    ; mov cx, al
    ;Similar question as above for two above two lines
    mov ah, 2
    mov dl, ch
    add dl, 48
    int 33
    mov dl, cl
    add dl, 48
    int 33

    mov ah, 4ch
    int 33
main endp
end main



; See program mult1 for its demonstration
