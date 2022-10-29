#!/bin/sh
printf "\ec\e[42;30m\nbuuilder"
zip roots.zip -r ./roots
dd if=/dev/zero of=./roots.img bs=1M count=64
sudo mkfs -t ext4 ./roots.img
mkdir /mnt/disk8 
sudo mount -t auto -o loop /dev/loop8 /mnt/disk8
sudo losetup /dev/loop8 ./roots.img
sudo mount -t auto -o loop /dev/loop8 /mnt/disk8
sudo cp -r ./roots /mnt/disk8
sudo unzip roots.zip -d /mnt/disk8
