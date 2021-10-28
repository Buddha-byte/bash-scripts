#!/bin/bash



sudo dd if=/dev/zero of=$1 bs=4096 status=progress

sudo umount $1


