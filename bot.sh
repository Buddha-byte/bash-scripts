#! /usr/bin/bash

session="TelegramBot"

tmux new-session -d -s $session
tmux rename-window -t 1 "main"
tmux attach -t $session
#workon Pizza_Bot
tmux split-window -h "exec TelegramBot"
#workon Pizza_Bot
