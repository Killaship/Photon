;
; A simple boot sector that prints a message to the screen using a BIOS routine.
;
mov ah , 0 x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine
mov al , ’H ’
int 0 x10
mov al , ’e ’
int 0 x10
mov al , ’l ’
int 0 x10
mov al , ’l ’
int 0 x10
mov al , ’o ’
int 0 x10
jmp $ ; Jump to the current address ( i.e. forever ).
;
; Padding and magic BIOS number.
;
times 510 -( $ - $$ ) db 0 ; Pad the boot sector out with zeros
dw 0 xaa55 ; Last two bytes form the magic number ,
; so BIOS knows we are a boot sector.
