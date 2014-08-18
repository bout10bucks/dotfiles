#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias reboot='sudo systemctl reboot'
alias t='todo.sh'
alias bb='yaourt'
export SUDO_ASKPASS="/home/bout10bucks/bin/dsudo"
complete -cf sudo
complete -cf man
shopt -s checkwinsize
#VBOX_USB=usbfs
#export PS1="\[$(tput bold)\]\h \W
if [ -n "$SSH_CLIENT" ]; then text="[SSH]"
fi
if [[ $UID -ne 0 ]]; then
export PS1="\[$(tput bold)\]${text}\h \W \[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
else
export PS1="\[$(tput bold)\]${text}\h \W \[$(tput setaf 1)\]\\$ \[$(tput sgr0)\]"
fi
