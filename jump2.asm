; use of 'jl' --> jump if lesser
dosseg
.model small
.stack 100h
.data
.code

main proc
    mov dl, 'a'
    mov ah, 2
    here:
        int 33
        inc dl
        cmp dl, 'f'
        jl here
    mov ah, 4ch
    int 33
main endp
end main







