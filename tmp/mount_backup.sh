#!/bin/bash

# Log beggining of backup
#/usr/bin/logger Backup - Beginning at `date`
# if needed, create the mount directory
if [ ! -d /home/clement/Desktop/$1 ] ; then mkdir /home/clement/Desktop/$1 ; fi

# if your backup disk is formatted in ext2 or ext3, use following line to mount the backup disk
##/bin/mount -t auto /dev/$1 /home/clement/Desktop/USB
/usr/bin/systemd-mount --no-block --automount=yes --collect /dev/$1 /home/clement/Desktop/$1 >> /home/clement/Desktop/result.txt
# or if your backup disk is formatted in FAT32, use following line to mount the backup disk
#/bin/mount -t vfat -o shortname=mixed,iocharset=utf8 /dev/$1 /mnt/backup

# Backup command using RSync
#/usr/bin/logger Backup - Video
#/usr/bin/rsync -rtv --del --modify-window=2 /home/clement/Desktop/td5 /home/clement/Desktop/$1 >> /home/clement/Desktop/result.txt
#sleep 2
#ls /home/clement/Desktop/sdb1 >> /home/clement/Desktop/result.txt
############/usr/bin/systemd-umount /dev/$1 /home/clement/Desktop/USB
############/bin/rmdir /home/clement/Desktop/$1
# You can add here some other backups ...
#/usr/bin/logger Backup - other files
#/usr/bin/rsync -rtv --del --modify-window=2 /path/to/your/files/other /mnt/backup

# force sync of files to disk before unmounting
#/bin/sync

# unmount the backup disk
#/bin/umount /home/clement/Desktop/USB

# Log end of backup
#/usr/bin/logger Backup - End at `date`
