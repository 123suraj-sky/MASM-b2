dosseg

.model small
.stack 100h
.data
.code

main proc
    mov ah, 2
    mov dl, 48
    mov cl, 10 ; "cl" will automatically decrement in every loop/cycle
    begin:
        int 21h
        inc dl
        call newLine ;subroutine call for new line
    loop begin

    mov ah, 4ch
    int 21h
main endp


;Sub routine call for new line
newLine proc
    push ax
    push dx
    mov ah, 2
    mov dl, 10
    int 33
    mov dl, 13
    int 33
    pop dx ;dx is popped first b/c stack follow LIFO
    pop ax
ret ;return

newLine endp
end main






