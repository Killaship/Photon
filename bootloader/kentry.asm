bits 32
org 0x1000
extern kmain 
extern keyboard_handler_main

global keyboard_handler
global loadprgm






call kmain ; calls the kernel main function
jmp $

loadprgm:
	jmp $ ; do later
keyboard_handler:                 
	call    keyboard_handler_main
	iretd
