#!/bin/bash
# Updater.
up_fn () {
clear
sudo -u user yay --noconfirm -Syyu
sudo -u user yay --noconfirm -Scc &> /dev/nul
clear
printf "Update completed \nDisk useage:\n"
df -h
sudo -u user sysbench cpu --cpu-max-prime=20000 run | grep -E 'events per second'
}
up_fn
exit 0
