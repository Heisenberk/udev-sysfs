#!/bin/bash

(
if [ ! -d /home/clement/Desktop/$1 ] ; then mkdir /home/clement/Desktop/$1 ; fi
/usr/bin/systemd-mount --no-block --automount=yes --collect /dev/$1 /home/clement/Desktop/$1
/usr/bin/rsync -rtv --del --modify-window=2 /home/clement/Desktop/td5 /home/clement/Desktop/$1
) &
