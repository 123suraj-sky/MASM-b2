dosseg
.model small
.stack 100h
.data
    var db 'a' ; variables(directive in ASM) should be declared without using comma
    ; var db 97 ; this can also be used as 97 is ASCII of 'a'
.code

main proc
    mov ax, @data ; these two lines is compulsory in case of var
    mov ds, ax
    mov dl, var
    mov ah, 2
    int 33
    mov ah, 4ch
    int 33
main endp
end main


