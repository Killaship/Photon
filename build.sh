git pull

nasm -f elf32 bootloader/mbr.asm -o mbr.o
g++ -m32 bootloader/kmain.cpp mbr.o -o os.bin -nostdlib -ffreestanding -std=c++11 -mno-red-zone -fno-exceptions -nostdlib -fno-rtti -Wall -Wextra -Werror -T linker.ld
qemu-system-i386 -fda os.bin -curses
