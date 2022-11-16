#!/usr/bin/env bash
#
#Simple translator with translate-shell
#### Requirements ####
#https://github.com/soimort/translate-shell
#
#


while true; do
    echo "Print \"q\" for stop"
    read -r -p "Give me a word: " name
    case $name in
        [Qq] ) exit;;
        * ) trans "$name" | most;;
    esac
done
