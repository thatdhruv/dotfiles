#!/usr/bin/env bash

xcompmgr -fF -I-.002 -O-.003 -D1 &
feh --bg-scale "/home/pirate/wallpapers/$(printf "%04d" $(shuf -i 0-310 -n 1)).jpg"
slstatus &

exec dwm
