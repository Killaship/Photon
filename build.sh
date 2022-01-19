git pull

nasm -f bin bootloader/mbr.asm -o mbr.bin
nasm -f bin bootloader/stage2.asm -o stage2.bin
cat mbr.bin stage2.bin > os.bin
qemu-system-i386 -fda os.bin.bin -curses
