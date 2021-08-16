echo "Now building..."
git pull
nasm -f bin bootloader/stage1.asm -o stage1
echo "Building complete, now running in QEMU."
export DISPLAY=:0.0
qemu-system-i386 -no-reboot stage1
