cryptsetup --cipher=aes-xts-plain64 --offset=0 --key-file=/dev/sdc --key-size=512 open --type plain /dev/sda cryptlvm
# pvcreate /dev/mapper/cryptlvm
# vgcreate MyVolGroup /dev/mapper/cryptlvm
# lvcreate -L 32G MyVolGroup -n root
# lvcreate -L 10G MyVolGroup -n swap
# lvcreate -l 100%FREE MyVolGroup -n home
# mkfs.ext4 /dev/MyVolGroup/root
# mkfs.ext4 /dev/MyVolGroup/home
# mount /dev/MyVolGroup/root /mnt
# mkdir /mnt/home
# mount /dev/MyVolGroup/home /mnt/home
# mkswap /dev/MyVolGroup/swap
# swapon /dev/MyVolGroup/swap
#HOOKS=(base udev autodetect keyboard keymap consolefont modconf block encrypt lvm2 filesystems fsck)
#cryptdevice=/dev/disk/by-id/disk-ID-of-sda:cryptlvm cryptkey=/dev/disk/by-id/disk-ID-of-sdc:0:64 crypto=:aes-xts-plain64:512:0:
#grub-install --recheck /dev/sdb




