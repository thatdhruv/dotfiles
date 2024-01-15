#
# ~/.bashrc
#
 
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
alias ls="ls --color=auto "
#PS1=$(printf "%*s\r%s" "$(tput cols)" "[\@]" "┌\e[0;31m$(tty) \e[0;32m\u@\h \e[0;34m\w\e[m\n└─────┤ ")
 
function promptRight() {
    echo -e "$(date +"[%I:%M %P]")"
}
 
function promptLeft() {
    echo -e "┌\e[0;31m$(tty) \e[0;32m\u@\h \e[0;34m\w\e[m\n└─────┤ "
}
 
function prompt() {
    compensate=0
    PS1=$(printf "%*s\r%s" "$(($(tput cols)+${compensate}))" "$(promptRight)" "$(promptLeft)")
}
 
PROMPT_COMMAND=prompt
 
### start of user-defined aliases ###
alias c="cp -r "
alias d="rm -rf "
alias g="git clone "
alias i="sudo pacman -S --noconfirm --needed "
alias l="eza -al --icons "
alias r="ranger "
alias u="sudo pacman -R --noconfirm "
alias v="nvim "
### end of user-defined aliases ###
