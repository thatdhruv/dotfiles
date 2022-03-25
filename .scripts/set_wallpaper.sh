#!/bin/sh

feh --bg-scale "/path/to/directory/$(printf "%PADDINGd" $(shuf -i RANGE -n 1)).jpg"
