#!/bin/bash

# ===== My own cheat sheet =====

read -p "Give me your question: " SEARCH

$(which rg) $SEARCH ~/.bin/cheat_sheet.sh 

echo $SEARCH 
