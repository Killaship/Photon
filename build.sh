git pull

nasm -f bin bootloader/mbr.asm -o mbr.bin
nasm -felf bootloader/kentry.asm kasm.o

gcc -Wall -Wextra -fno-stack-protector -m32 -c kernel/kernel.c -o kc.o -ffreestanding

ld -m elf-i386 -o kernel.bin -Ttext 0x1000 kasm.o kc.o --oformat binary

cat mbr.bin kernel.bin > os.bin

qemu-system-i386 -fda os.bin -curses -rtc base=localtime
