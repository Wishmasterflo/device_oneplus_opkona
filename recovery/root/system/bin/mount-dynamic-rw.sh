#!/system/bin/sh

setenforce 0

sleep 5
mount -w /product > /dev/null
mount -w /vendor > /dev/null
mount -w /system_root > /dev/null

sleep 1
umount /product > /dev/null
umount /vendor > /dev/null
umount /system_root > /dev/null
