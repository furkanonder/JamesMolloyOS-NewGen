#!/bin/sh
set -e
. ./headers.sh

for PROJECT in $PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install)
done

. ./initrd/initrd.sh
mv initrd.img sysroot/boot/initrd.img