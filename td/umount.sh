#!/bin/bash

(
/usr/bin/systemd-umount $1 /home/clement/Desktop/$1
/usr/bin/rm -r /home/clement/Desktop/$1
) &
