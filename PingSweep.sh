#! /usr/bin/bash

# ===== Simple pingsweep script

echo "Enter the subnet: "
read SUBNET

for IP in $(seq 1 254)
do
    ping -c 1 $SUBNET.$IP
done
