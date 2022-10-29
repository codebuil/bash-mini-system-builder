#!/bin/sh
printf "\ec\e[42;30m\nbuuilder"

dd if=/dev/zero of=./roots.img bs=1M count=64
sudo mkfs -t ext4 ./roots.img
mkdir /mnt/disk8 

sudo losetup /dev/loop8 ./roots.img
sudo mount -t auto -o loop /dev/loop8 /mnt/disk8
sudo cp -r ./roots /mnt/disk8

