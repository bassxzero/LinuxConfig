# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/beshrc
#fi

#PS1="$USER: "



#PS1='\u@\h:\w [\#] '





function __setprompt {
# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[41m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset



PS1="${Purple}\u${BGreen}@${Red}\h:${BBlack}\w ${NC}[\#]"

#PS1='\u@\h:\w [\#] '

}
__setprompt


# Color for man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# End Color for man pages



# User specific aliases and functions
# Prevent files from being overwritten by redirection.
set -o noclobber

# Prompt before removing or overwriting files with common commands.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Common shortcuts for ls.
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
# Common misspellings for ls.  Uncomment if you want them.
#alias sl="ls"
#alias LS="ls"

# The following was copied from .bashrc.20140814

alias d="cd /home/$USER/Desktop"
alias .="cd .."
alias c="clear"
alias m="make"
alias mc="make clean"
alias re="reset"
alias r="./run"
alias dev="cd /var/www/uchiha.clemson.edu"
alias h="history"
myGrep(){
 grep -r -n -i --color $1 $2
}
alias gr=myGrep

export GREP_OPTIONS='-r -n -i --color'

# For 256 color support
# Needed for color schemes in vim

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
