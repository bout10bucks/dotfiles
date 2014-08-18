#
# ~/.bash_profile
#
export EDITOR=vim
export PANEL_FIFO=/tmp/panel-fifo
export PATH=$PATH:~/bin
export MOZ_PLUGIN_PATH="/usr/lib/mozilla/plugins"
#[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
# Start X at login
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
