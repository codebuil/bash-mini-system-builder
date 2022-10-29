#!/bin/sh
printf "\ec\e[42;30m\ncopyng boot part.\n"
sudo dd if=/dev/mmcblk0p1 of=./boot.img