export DISPLAY=:0.0
nasm -f bin bootloader/stage1.asm -o stage1
qemu-system-i386 -no-reboot stage1
