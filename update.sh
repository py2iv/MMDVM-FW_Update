#! /bin/bash
#####################################################
#                                                   #
#    Install libs required to build and install     #
#            for the STM32 - PY2IV                  #
#                                                   #
#####################################################

pistar-watchdog.service stop
systemctl stop mmdvmhost.timer
systemctl stop mmdvmhost.service
apt-get update
apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi gdb-arm-none-eabi libstdc++-arm-none-eabi-newlib autoconf libtool pkg-config libusb-1.0-0 libusb-1.0-0-dev stm32flash
cd /opt/
#git clone https://github.com/g4klx/MMDVM.git
https://github.com/N4IRS/MMDVM-Install.git
cd /opt/MMDVM/
git clone https://github.com/shawnchain/STM32F10X_Lib.git
