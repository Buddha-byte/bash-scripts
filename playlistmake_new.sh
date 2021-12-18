#!/bin/bash

# ######## Create a playlist #######

MENU="old new"
OLD="/home/$USER/Media/Videos/Playlists" # My own way to store playlists
NEW="/home/$USER/Videos/Playlists" # Choose option for automatisation

MakePlaylist () {
    # Make a playlist
    "$(which find)" "$PWD" -type f -iname "*.$EXT" | sort > "$2"/"$1".m3u
}

read -p "Give me an extenstion " EXT
echo "Please, choose a path"
echo "Choose *new* to create directory"
select option in $MENU; do
    if [ $REPLY = 1 ]
    then
        MakePlaylist $1 $OLD
        exit 0
    elif [ $REPLY = 2 ]
    then
        if [ ! -d $NEW ]
        then
            mkdir $NEW
            MakePlaylist $1 $NEW
            exit 0
        else
            MakePlaylist $1 $NEW
            exit 0
        fi
    fi
done
