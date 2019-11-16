#!/bin/bash

(
/usr/bin/systemd-umount $1 /usr/local/etc/$1
/usr/bin/rm -r /usr/local/etc/$1
) &

