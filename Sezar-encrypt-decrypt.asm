org 100h
lea bp, msg
lea bx, encrpt 
mov di, 0 
mov ah, 2
mov cx, 7
 
lup:
mov al, [bp+di]
add al, ah
mov [bx+di], al
inc di
loop lup

lea bp, encrpt
lea bx, decrpt
mov di, 0
mov ah, 2
mov cx, 7

lp:
mov al, [bp+di]
sub al, ah
mov [bx+di], al
inc di
loop lp

ret
msg db "Dilnoza"
encrpt db 7 dup(?)
decrpt db 7 dup(?)
end