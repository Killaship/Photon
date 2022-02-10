bits 32
org 0x1000
extern kmain 
extern keyboard_handler_main

global keyboard_handler
global loadprgm





mov esp, stack_space    ; set stack pointer	
call kmain ; calls the kernel main function
jmp $

loadprgm:
	jmp $ ; do later
keyboard_handler:                 
	call    keyboard_handler_main
	iretd

section .bss
resb 8192 ; 8KB for stack
stack_space:
