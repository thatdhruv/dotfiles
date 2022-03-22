#!/usr/bin/env bash

xcompmgr -fF -I-.002 -O-.003 -D1 &
sh /path/to/set_wallpaper.sh
slstatus &

exec dwm
