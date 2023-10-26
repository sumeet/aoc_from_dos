#!/bin/bash
set -ex
#qemu-system-i386 -cpu qemu32 -fda dos1.img -hda dos_hda.qcow2 -display gtk,zoom-to-fit=on
qemu-system-i386 -cpu qemu32 -hda dos_hda.qcow2 -netdev user,id=network0 -device ne2k_isa,netdev=network0 -display gtk,zoom-to-fit=on

