bits 32

extern kmain 
extern keyboard_handler_main

global keyboard_handler
global loadprgm

keyboard_handler:                 
	call    keyboard_handler_main
	iretd

loadprgm:
	jmp $ ; do later
  
org 0x1000
call kmain ; calls the kernel main function

jmp $
