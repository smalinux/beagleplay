#!/bin/bash
#
# TODO: provide better a way to append all your toolchains to $PATH
#
#
RED='\033[0;31m'
NC='\033[0m' # No Color


########## Start
#
mkdir $HOME/x-tools

# Step 1- get ready toolchain
wget -nc -P $HOME/Downloads/ https://developer.arm.com/-/media/Files/downloads/gnu/12.2.rel1/binrel//arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz

# Step 2- extract
tar vxf $HOME/Downloads/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz -C $HOME/x-tools

# Step 3- Add to $PATH
#export PATH="$PATH:$HOME/x-tools/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin/"
# SMA TODO add them dynamically on the fly
printf "${RED}SMA: Update profile file: ${NC}\n"
printf "${RED}$HOME/x-tools/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin/ >> ~/.profile"${NC}\n"
########## End
