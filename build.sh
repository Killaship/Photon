echo "Now building..."
git pull
nasm -f bin bootloader/photon.asm -o photon.bin
echo "Building complete, now running in QEMU."
export DISPLAY=:0.0
qemu-system-i386 -fda photon.bin
