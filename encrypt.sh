#!/usr/bin/bash

echo "I was made for encrypting/decrypting files"
echo "What do you want?"

CHOICE="Encrypt Decrypt"

select option in $CHOICE; do
    if [ $REPLY = 1 ];
    then
        echo "You want encrypt"
        echo "Please, give me a file's name"
        read file;
        gpg -c $file
        echo "The file has been encrypted"
        exit 0
    else
        echo "You want decrypt"
        echo "Please, enter the file's name"
        read file2;
        gpg -d $file2
        echo "The file has been decrypted"
        exit 0
    fi
done
