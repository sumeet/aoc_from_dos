#!/bin/bash
set -ex

mkdir -p ./mnt
modprobe nbd max_part=16
qemu-nbd -c /dev/nbd0 ./dos_hda.qcow2
mount /dev/nbd0p1 ./mnt

read -n1 -p "Press any key when you're done doing your business in mnt/ (make sure to use root)"
read -n1 -p "Are you sure?"
read -n1 -p "Are you really sure?"

umount ./mnt
qemu-nbd -d /dev/nbd0
