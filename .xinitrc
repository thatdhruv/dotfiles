#!/usr/bin/env bash

xrdb -merge ~/.Xresources
xcompmgr -fF -I-.002 -O-.003 -D1 &
feh --bg-scale .wallpaper.jpg
slstatus &
dunst &

exec dwm
