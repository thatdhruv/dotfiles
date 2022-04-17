#!/usr/bin/env bash

xrdb -merge ~/.Xresources
xcompmgr -fF -I-.002 -O-.003 -D1 &
sh ${HOME}/.scripts/set_wallpaper.sh
slstatus &

exec dwm
