#!/usr/bin/bash

# ===== Simple Password Generator =====

echo "Hey dear! I'm your helper in password's world!"
echo "Give me a lenght of your password: "
read PASS_LENGHT
for p in $(seq 1 5);
do
    openssl rand -base64 24 | cut -c1-$PASS_LENGTH
done
