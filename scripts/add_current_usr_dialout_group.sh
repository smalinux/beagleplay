#!/bin/bash
#
# Add current user to dialout group
#
RED='\033[0;31m'
NC='\033[0m' # No Color



printf "${RED}SMA: ${NC}Update your host distro\n"
########## Start
#
# Add current user (smalinux) to dialout group, reboot your pc to activate this step...
adduser $USER dialout
#
########## End
printf "${RED}SMA: reboot your pc to activate this step...${NC} DONE!\n"
