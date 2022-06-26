include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc 
    
    print "Enter a character:"
    
    mov ah, 1
    int 21h
    mov bl, al
     
    cmp bl, 89
    jne false
    je true
    true:
    printn 10, 13
    printn "input metch with Y"
    false:
    
    cmp bl, 121
    jne false1
    je true1
    true1:
    printn 10, 13
    printn "input metch with y"
    false1: 
    
    mov ah, 4ch
    int 21h
    main endp
end main