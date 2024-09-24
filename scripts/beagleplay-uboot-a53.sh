#!/bin/bash
#
# a53 U-Boot
#
# TODO move source to correct place and build dir to the right place....

export CROSS_COMPILE=aarch64-linux-gnu-

mkdir -p $HOME/build/a53

pushd $HOME/build/a53/

   git clone https://git.beagleboard.org/beagleplay/u-boot.git
   cd u-boot/
   git checkout f036fb


   # defconfig
   # TODO change this link "$HOME/build/" to more cleaner place
   make O=$HOME/build/a53/build/ am62x_evm_a53_defconfig

   # menuconfig:
   # TODO save modified .config instead of this...
   # TODO save modified .config instead of this...
   # TODO save modified .config instead of this... Important
   make O=$HOME/build/a53/build/ menuconfig

   # build
   # Makefile params:
   # 1- The path to the Trusted Firmware (TF-A): ATF=
   # 2- The path to the Device Management Firmware DM=
   # 3- The output directory: O=
   # TODO i think the output dir is wrong here... source & output at same place?
   make ATF=$HOME/build/tf-a/arm-trusted-firmware/build/k3/lite/release/bl31.bin \
      DM=$HOME/build/tifs/ti-linux-firmware/ti-dm/am62xx/ipc_echo_testb_mcu1_0_release_strip.xer5f \
      O=$HOME/build/a53/build/


   echo "SMA TODO should check here if the build end up correctly or not...."
   # tispl.bin and u-boot.img : check if these files exist?


popd
