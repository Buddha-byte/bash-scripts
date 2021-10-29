#!/bin/bash

# My formatting script for usb flash drive

echo "--------------------------------------------"
echo -e "\t Welcome, my dear friend! "
echo "--------------------------------------------"
read -p "Give me the type of filesystem! " FISYS
read -p "Of course, I need a name of a device! " DEVICE

# Umount target device
sudo umount $DEVICE &>/dev/null

if [ "$FISYS" == "vfat" ]; # FAT32 formatting options
then
    echo "I'll do it for you!"
    sudo mkfs.vfat $DEVICE -n sk &>/dev/null
    if [ "$?" == 0 ];
    then
        echo "Well done! Congratulations!"
    else
        echo "Oops! Something goes wrong!"
    fi
elif [ "$FISYS" == "ntfs" ]; # NTFS formatting optinos
then
    echo "I'll do it for you!"
    sudo mkfs.ntfs $DEVICE &>/dev/null
    if [ "$?" == 0 ];
    then
        echo "Well done! Congratulations!"
    else
        echo "Oops! Something goes wrong!"
    fi
elif [ "$FISYS" == "ext4" ]; # EXT4 formatting options
then
    echo "I'll do it for you!"
    sudo mkfs.ext4 $DEVICE &>/dev/null
    if [ "$?" == 0 ];
    then
        echo "Well done! Congratulations!"
    else
        echo "Oops! Something goes wrong!"
    fi
fi
