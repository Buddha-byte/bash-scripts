#!/usr/bin/env bash
#
#Simple translator with translate-shell


while true; do
    echo "Print \"N\" for stop"
    read -r -p "Give me a word: " name
    case $name in
        [Nn] ) exit;;
        * ) trans "$name" | less;;
    esac
done
