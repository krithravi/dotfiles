#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#export PS1='\[\e[1;32m\]KR$ \[\e[m\]'
export PS1='\[\e[1;32m\][\w ] \[\e[m\]'
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

LS_COLORS="di=1;36:*.png=1;33:\
*.jpg=1;33:*.jpeg=1;33:*.zip=1;31:*.jar=1;31:\
*.tar.gz=1;31:*pdf=1;32:*djvu=1;32:\
*.tex=0;32:*.html=0;32:*.md=0;32:\
*.cpp=0;33:*.c=0;33:*.java=0;33:*.py=0;33:\
*.js=0;33:*.r=0;33:*.gnu=0;33:\
*akefile=1;34:ex=1;33:\
*.dat=0;35:*.class=0;35:*.txt=0;35" ; export LS_COLORS;

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

quo
