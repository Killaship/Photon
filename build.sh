git pull

nasm -f bin bootloader/photon.asm -o photon.bin

qemu-system-i386 -fda photon.bin -curses
