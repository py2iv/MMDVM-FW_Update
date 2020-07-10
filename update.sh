#! /bin/bash
apt-get update
apt-get install -y -t git binutils-arm-none-eabi gcc-arm-none-eabi gdb-arm-none-eabi libstdc++-arm-none-eabi-newlib autoconf libtool pkg-config libusb-1.0-0 libusb-1.0-0-dev stm32flash
systemctl stop pistar-watchdog
cd /opt/src
git clone https://github.com/g4klx/MMDVM.git
cd MMDVM/
git clone https://github.com/shawnchain/STM32F10X_Lib.git
