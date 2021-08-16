nasm -f bin bootloader/boot1.asm -o boot1
qemu-system-i386 -no-reboot boot1
