#!/bin/bash

# variables
# uppercase by cinvention
NAME="Misha"

# echo command
echo "Hello, $NAME"
#echo "Hello, ${NAME}" - the same thing

# user input
read -p "Enter your name: " NAME
echo "Hello to you, $NAME"

# simple if statement
if [ "$NAME" == "Misha"]
then
    echo "Hello, my dear friend"
fi

# if-else
if [ "$NAME" == "Misha"]
then
    echo "Hello, my dear friend"
else
    echo "I don't know you!"
fi

# else-if(elif)
if [ "$NAME" == "Misha"]
then
    echo "Hello, my dear friend"
elif [ "$NAME" == "Jack"]
then
    echo "You are the crazy horse"
    
else
    echo "I don't know you!"
fi

# comparison
NUM1=1
NUM2=5
if [ "NUM1" -gt "NUM2"]
then
    echo "$NUM1 is greater then $NUM2"
else
    echo "$NUM2 is greater then $NUM1"

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

