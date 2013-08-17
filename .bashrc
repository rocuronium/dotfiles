alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias ls="ls -lFh --color=auto --group-directories-first"
alias syncmediatoNAS="/home/calvin/.scripts/sync-media-to-NAS.sh"
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'

export DEBFULLNAME="Calvin Loewen"
export DEBEMAIL="calvin.loewen@gmail.com"

# User specific environment and startup programs:
export LANG=en_CA.UTF-8
#export TERM=rxvt-unicode

# don't put duplicate lines or empty spaces in the history
export HISTCONTROL=ignoreboth
 
# combine multiline commands in history
shopt -s cmdhist

# merge session histories
shopt -s histappend

# enable colors
eval "`dircolors -b`"

# make grep highlight results using color
export GREP_OPTIONS='--color=auto'

# colorful man pages
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;31m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m' # end the info box
#export LESS_TERMCAP_so=$'\E[01;42;30m' # begin the info box
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'
