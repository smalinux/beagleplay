#!/bin/bash
#
# Update your distro
#
RED='\033[0;31m'
NC='\033[0m' # No Color


printf "${RED}SMA: ${NC}Update your host distro\n"
########## Start
#
sudo apt update
yes | sudo apt dist-upgrade
#
########## End
printf "${RED}SMA: ${NC}DONE!\n"
