#!/bin/bash

(
/usr/bin/mkdir -p /usr/local/etc/$1
/usr/bin/systemd-mount --no-block --automount=yes --collect /dev/$1 /usr/local/etc/$1
/usr/bin/rsync -rtv --del --modify-window=2 /home/clement/Desktop/td5 /usr/local/etc/$1
) &

