#!/bin/sh

a=$((`ls -l ${HOME}/.wallpapers/ | wc -l`-1))
b=${#a}

feh --bg-scale "${HOME}/.wallpapers/$(printf "%0$(echo $b)d" $(shuf -i 0-$a -n 1)).jpg"
