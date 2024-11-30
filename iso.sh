#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub
cp sysroot/boot/initrd.img isodir/boot/
cp sysroot/boot/jamesmolloyos.kernel isodir/boot/jamesmolloyos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "jamesmolloyos" {
	multiboot /boot/jamesmolloyos.kernel
	module /boot/initrd.img
}
EOF
grub-mkrescue -o jamesmolloyos.iso isodir
