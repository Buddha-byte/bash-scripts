#!/bin/bash

# ######## Create a playlist #######

DEFAULT="/home/py_buddha/Downloads/Videos/Playlists"

$(which find) $PWD -type f -iname '*.mkv' | sort > $DEFAULT/$1.m3u
