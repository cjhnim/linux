#!/bin/bash -v
KERNEL=kernel
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=/media/kyunwoo/root modules_install
cp /media/kyunwoo/boot/$KERNEL.img /media/kyunwoo/boot/$KERNEL-backup.img
cp arch/arm/boot/zImage /media/kyunwoo/boot/$KERNEL.img
cp arch/arm/boot/dts/*.dtb /media/kyunwoo/boot/
cp arch/arm/boot/dts/overlays/*.dtb* /media/kyunwoo/boot/overlays/
cp arch/arm/boot/dts/overlays/README /media/kyunwoo/boot/overlays/
