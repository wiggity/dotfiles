#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

alias h='history|tail'
alias hh='history|tail -n 40'
alias vi=vim
alias tmux='tmux -2'

svn() {
	case "$1" in
		st|stat|status)
			svnargs1=""
			svnargs2="--ignore-externals"
			for i in $@; do
				if [ "--examine-externals" == "$i" ]; then
					svnargs2=""
				else
					svnargs1="$svnargs1 $i"
						fi
						done
						command svn $svnargs1 $svnargs2
						;;
		*)
			command svn "$@"
			;;
		esac
}


myhost='\h'
PS1="${myhost} \W\[\e[0;31m\]$\[\e[m\] "

export SVN_EDITOR=vim

function wfind() {
   find . -type f -name "$2" -exec grep -il "$1" {} /dev/null \;
}
