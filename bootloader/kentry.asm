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
  

mov esp, stack_space    ; set stack pointer	

call kmain ; calls the kernel main function
jmp $

section .bss
resb 8192 ; 8KB for stack
stack_space:
