#!/usr/bin/env bash
# run.sh

VERSION="2.2.0"

source /etc/profile
source /usr/local/share/chruby/auto.sh
source /usr/local/share/chruby/chruby.sh

chruby ${VERSION}

tmux new-session -d -s run
tmux split-window -v
tmux split-window -h
tmux resize-pane -y 15
tmux attach-session -t run
