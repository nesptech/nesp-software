#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

sudo mount /dev/sda6 /mnt
sudo mount --bind /dev /mnt/dev
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys
sudo chroot /mnt
grub-probe -t device /boot/grub
sudo grub-install /dev/sda6/boot/grub/x86_64-efi
sudo grub-install --recheck /dev/sda
sudo update-grub


