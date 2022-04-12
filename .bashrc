#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#export PS1='\[\e[1;32m\]KR$ \[\e[m\]'
#export PS1='\[\e[1;32m\][\w ] \[\e[m\]'
#export PS1='\[\e[1;92m\][\w] \[\e[m\]'
#export PS1='\[\e[38;5;154m\][\w@\[\e[m\]\[\e[38;5;218m\]\H\[\e[m\]\[\e[38;5;154m\]] \[\e[m\]'
export PS1='\[\e[1;32m\]> \[\e[m\]'
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi


LS_COLORS="di=1;36:ln=0;36:\
*.png=0;35:*.jpg=0;35:*.jpeg=0;35:\
*.zip=0;31:*.jar=0;31:*.tar.gz=0;31:*.tar=0;31:\
*pdf=1;32:*djvu=1;32:*mobi=1;32:*epub=1;32:\
*.tex=0;32:*.html=0;32:*.md=0;32:\
*.cpp=0;33:*.c=0;33:*.java=0;33:*.py=0;33:*.js=0;33:*.r=0;33:*.gnu=0;33:*.sh=0;33:*.ipynb=0;33:\
*akefile=1;34:\
ex=1;33:\
*.dat=0;34:*.class=0;34:*.txt=0;34:*.csv=0;34"

export LS_COLORS;

# making man pages a bit easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export EDITOR="/usr/bin/nvim"

setxkbmap -option compose:ralt,caps:escape

export PATH=/home/krithika/.local/bin:$PATH
#quo

# android studio stuff
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
