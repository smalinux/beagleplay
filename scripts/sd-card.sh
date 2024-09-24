#!/bin/bash
#
# How to run this  script:
#  $ bash ./scripts/sd-card.sh sda
#
#  TODO  get sda automatically.... the name of the SD card...
#


export SD=${1}

sudo umount /dev/${SD}

# Erase the existing partition table by simply zero-ing the first 16 MiB of the SD card:
sudo dd if=/dev/zero of=/dev/${SD} bs=1M count=16

# TODO use fdisk
# and please document every line at fdisk to be readable as most as possible
sudo cfdisk /dev/sda


# dynamic sda dito:
sudo mkfs.vfat -F 32 -n boot /dev/sda1
sudo mkfs.ext4 -L env -O ^metadata_csum /dev/sda2



$HOME/build/k3-image-gen/k3-image-gen/tiboot3.bin
$HOME/build/a53/build/tispl.bin
$HOME/build/a53/build/u-boot.img
