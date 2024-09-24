#!/bin/bash
#
# k3-image-gen
#
#
# AM62x requires both SPL and the TIFS firmware to be grouped into a single
# image within a X.509 Certificate encapulsation. To do so, TI provides us a
# tool called k3-image-gen, so let’s use it!

#
# A few parameters have to be passed to the Makefile
#  1- The SoC name: SOC=am62x
#  2- The path to the u-boot-spl image:
#     SBL=../build_uboot/r5/spl/u-boot-spl.bin
#  3- The path to the to TIFS firmware binary image:
#     SYSFW_PATH=../ti-linux-firmware/ti-sysfw/tifs-firmware-am62x-gp.bin

export CROSS_COMPILE=arm-none-eabi-

mkdir -p $HOME/build/k3-image-gen

pushd $HOME/build/k3-image-gen/

   #
   git clone https://git.ti.com/cgit/k3-image-gen/k3-image-gen
   cd k3-image-gen/
   git checkout 150f1956b4bdcba36e7dffc78a4342df602f8d6e


   # build
   make SOC=am62x \
      SBL=$HOME/build/r5/build_uboot/r5/spl/u-boot-spl.bin \
      SYSFW_PATH=$HOME/build/tifs/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-gp.bin



   # TODO check? Correct? continue.. NO? exit message
   # tiboot3-am62x-gp-evm.bin file exist?
   # tiboot3.bin file exist?

   # TODO check again

popd
