#!/bin/bash
#

#export CROSS_COMPILE=arm-none-eabi-

mkdir -p $HOME/build/tifs

pushd $HOME/build/tifs

   git clone https://git.ti.com/git/processor-firmware/ti-linux-firmware.git
   cd ti-linux-firmware
   git checkout c126d3864b9faf725ff40e620049ab5d56dedc5b
   make




   echo "SMA TODO should check here if the build end up correctly or not...."

   # TODO  get this automaticaly
   echo "output: /home/smalinux/build/r5/build_uboot/r5/spl"
popd
