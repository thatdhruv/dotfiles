#!/usr/bin/env bash

xcompmgr -fF -I-.002 -O-.003 -D1 &
feh --bg-scale "/path/to/directory/$(printf "%PADDINGd" $(shuf -i RANGE -n 1)).jpg"
slstatus &

exec dwm
