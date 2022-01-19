git pull

nasm -f bin bootloader/mbr.asm -o mbr.bin
g++ -m64 kmain.cpp boot4.o -o kernel.bin -nostdlib -ffreestanding -std=c++11 -mno-red-zone -fno-exceptions -nostdlib -fno-rtti -Wall -Wextra -Werror -T linker.ld
qemu-system-i386 -fda os.bin -curses
