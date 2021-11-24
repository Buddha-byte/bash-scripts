#!/bin/bash

# ######## Create a playlist #######

DEFAULT="/home/py_buddha/Media/Videos/Playlists"
read -p "Give me an extenstion " EXT

"$(which find)" "$PWD" -type f -iname "*.$EXT" | sort > "$DEFAULT"/"$1".m3u
