echo "Now building..."
git pull
nasm -f elf32 bootloader/photon.asm -o photon.o
ld -felf_i386 photon.o loadableimg.o -o OSimg
echo "Building complete, now running in QEMU."
export DISPLAY=:0.0
qemu-system-i386 -no-reboot -fda OSimg
