#!/bin/sh

if [ ! $# -le 1 ]; then
	echo "Usage: $0 <text>"
	exit 1
fi

convert -size 1920x1080 xc:#333333 -pointsize 100 -font "Terminus-(TTF)-Bold" -gravity Center -fill grey -annotate 0,0 "$1" wallpaper.jpg
feh --no-fehbg --bg-scale wallpaper.jpg
