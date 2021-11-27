#!/usr/bin/bash

# Make my own tasks simple!

function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@ # make a function
}

MODIFIED=$(config status | grep "modified" | awk -F ":" '{print $2}') # take the names of modified files

if [ $MODIFIED ]
then
    config add $MODIFIED && config commit && config push
else
    echo "Everything is up to date"
fi


