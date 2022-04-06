#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\e[0;31m$(tty) \e[0;32m$LOGNAME@$HOSTNAME \e[0;34m$(pwd)\e[m]\n\011"
