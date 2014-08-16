#
# ~/.bash_profile
#
export PATH=$PATH:~/bin
export EDITOR=vim
#LD_PRELOAD=/home/bout10bucks/Dropbox/mymemcpy.so
#export LD_PRELOAD
#[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
#keychain
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)
# Start X at login
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
