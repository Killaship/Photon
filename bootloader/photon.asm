org 0x7C00
jmp $
times 510-($-$$) db 0 ; 2 bytes less now
dw 0xaa55
