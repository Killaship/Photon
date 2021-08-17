echo "Now building..."
git pull
nasm -f elf32 bootloader/photon.asm -o photon.o
ld -m elf_i386 loadableimg.o photon.o -o OSimg
echo "Building complete, now running in QEMU."
export DISPLAY=:0.0
qemu-system-i386 -no-reboot -fda OSimg
