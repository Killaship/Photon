git pull

cd bootloader
nasm -f bin mbr.asm -o mbr.bin
nasm -felf kentry.asm -o kasm.o
cd -

gcc -Wall -Wextra -fno-stack-protector -m32 -c kernel/kernel.c -o kc.o -ffreestanding

ld -m elf_i386 -o kernel.bin -Ttext 0x1000 bootloader/kasm.o kc.o --oformat binary --ignore-unresolved-symbol _GLOBAL_OFFSET_TABLE_

cat bootloader/mbr.bin kernel.bin > os.bin

qemu-system-i386 -fda os.bin -curses -rtc base=localtime
