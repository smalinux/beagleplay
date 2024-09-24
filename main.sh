#!/bin/bash
#

#
# Define vars
#
# SMA build dir
export SMA_BUILD_DIR=$HOME/build

# create build dir
mkdir -p ${SMA_BUILD_DIR}


# SMA Update your distribution
#bash ./scripts/update_host_distro.sh


# SMA Install all host packages
bash ./apt.sh

# SMA Add current user (smalinux) to dialout group, reboot your pc to activate this...
bash ./scripts/add_current_usr_dialout_group.sh

# toolchains
# get them && add them to $PATH
bash ./scripts/32_toolchain.sh

#==============================================================================
# tiboot3.bin
#==============================================================================
# Configure U-Boot for R5 Processor
bash ./scripts/beagleplay-uboot-r5.sh

# TIFS
bash ./scripts/beagleplay-tifs.sh

# combine SPL and tf-a into single image: tiboot3.bin
bash ./scripts/beagleplay-k3-image-gen.sh


#==============================================================================
# bl31.bin
#==============================================================================
# Get and compile TF-A: bl31.bin
#bash ./scripts/beagleplay-tf-a.sh


#==============================================================================
# uboot.img & tispl.bin
#==============================================================================
# Configure U-boot for the A53 Processor
#bash ./scripts/beagleplay-uboot-a53.sh
