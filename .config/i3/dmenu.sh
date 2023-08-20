BACKGROUND='#1e1e1e'
FOREGROUND='#6ffc99'

#!/bin/bash
cachedir=${XDG_CACHE_HOME:-"$HOME/.cache"}
if [ -d "$cachedir" ]; then
	cache=$cachedir/dmenu_run
else
	cache=$HOME/.dmenu_cache # if no xdg dir, fall back to dotfile in ~
fi
cmd=`(
	IFS=:
        if [ -f ~/.aliasrc ]; then
  		  aliases=( ~/.aliasrc )
		fi

		if [ ~/.bash_functions ]; then
          functions=( ~/.bash_functions )
        fi

 if stest -dqr -n "$cache" $PATH || stest -fqr -n "$cache" "$aliases" || stest -fqr -n "$cache" "$functions"; then
          (
            stest -flx $PATH
            source $aliases
	    	alias | awk -F '[ =]' '{print $2}'
	    	compgen -A function
          ) | sort -u | tee "$cache" | dmenu -fn 'Source Code Pro:style=Regular' -nb $BACKGROUND -sf $BACKGROUND -sb $FOREGROUND -nf $FOREGROUND "$@"
	else
		dmenu -fn 'Source Code Pro:style=Regular' -nb $BACKGROUND -sf $BACKGROUND -sb $FOREGROUND -nf $FOREGROUND "$@" < "$cache"
	fi
)`

if [ -f ~/.aliasrc ]; then
	if [ ! -z $(which $cmd) ]; then
		exec $cmd &
	else
		echo -e "source ~/.aliasrc \n $cmd" | bash -O expand_aliases &
	fi
fi

# https://bbs.archlinux.org/viewtopic.php?id=173173
