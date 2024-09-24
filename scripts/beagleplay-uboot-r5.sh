#!/bin/bash
#
# TODO: Use U-Boot mainstream insead of BeagleBoard vendor.
#  "Because the BeaglePlay board is not yet supported by the mainline U-Boot source, we will use the forked repository of the BeagleBoard vendor."

export CROSS_COMPILE=arm-none-eabi-

mkdir -p $HOME/build/r5

pushd $HOME/build/r5/

   git clone https://git.beagleboard.org/beagleplay/u-boot.git
   cd u-boot/
   git checkout f036fb

   ls configs/ | grep am62x

   # defconfig
   make am62x_evm_r5_defconfig O=../build_uboot/r5/

   # build
   make -j10 O=../build_uboot/r5/

   echo "SMA TODO should check here if the build end up correctly or not...."

   # TODO  get this automaticaly
   echo "output: /home/smalinux/build/r5/build_uboot/r5/spl"
popd
