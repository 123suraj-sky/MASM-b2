; program take two input from user and add them

dosseg
.model small
.stack 100h
.data
.code

main proc
    call takeInput ;taking 1st input
    mov dl, al
    call takeInput ;taking 2nd input
    ; performing addition
    add dl, al
    sub dl, 48
    mov ah, 2
    int 33
    mov ah, 4ch
    int 33
main endp

takeInput proc
    ; Notes: here no need to do push and pop operation for ax and dx b/c we are not using it.
    ; We are using 'ah' in subroutine and 'al' in main proc and both are different
    mov ah, 1
    int 33
ret
takeInput endp
end main






