[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" == "/dev/tty1" ]]; then
	exec startx
fi
export PATH=$PATH:/home/krithika/.spicetify
