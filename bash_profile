#
# ~/.bash_profile
#
export EDITOR=vim
#[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
# Start X at login
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
