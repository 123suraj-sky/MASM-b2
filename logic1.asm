dosseg
.model small
.stack 100h
.data
.code

; XOR --> y = a'b + b'a
; a    b    y
; 1    1    0
; 1    0    1
; 0    1    1
; 0    0    0

main proc

    mov dl, 001b
    mov bl, 011b
    and dl, bl
    ; or dl, bl
    ; xor dl, bl
    ; test dl, bl ; similar to and
    add dl, 48 ; addding 48 in ASCII format to get result in decimal and not in ASCII


    ; using below code for execution of not
    ; mov dl 11111110b
    ; not dl
    mov ah, 2
    int 21h



    mov ah, 4ch
    int 21h
main endp
end main




