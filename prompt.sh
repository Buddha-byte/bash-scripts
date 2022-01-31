#!/usr/bin/bash
# A dmenu binary prompt script
# Shutdown system with confirmation

[ $(echo -e "No\nYes" | dmenu -i -p "$1") == "Yes" ] && $2
