#!/bin/bash
#
# TF-A
#
# Makefile params:
# 1- Change the cross-compiler prefix
# 2- The architecture (aarch64)
# 3- The AM62x SoC platform which is the k3 family is selected too with PLAT=k3
# 4- the target board we use with TARGET_BOARD=lite

# Ready Toolchain:
# sudo apt-get install gcc-aarch64-linux-gnu

export CROSS_COMPILE=aarch64-linux-gnu-

mkdir -p $HOME/build/tf-a

pushd $HOME/build/tf-a/

   #
   git clone https://github.com/ARM-software/arm-trusted-firmware.git
   cd arm-trusted-firmware/
   git checkout v2.9


   # TODO check? Correct? continue.. NO? exit message

   # defconfig

   # build
   make ARCH=aarch64 PLAT=k3 TARGET_BOARD=lite

   # TODO check again
   # build/k3/lite/release/bl31.bin file is exist?

popd
