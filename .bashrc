####-ANSI-COLOR-CODES-####
Color_Off="\[\033[0m\]"
###-Regular-###
Yellow="\[\033[1;33m\]"
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Purple="\[\033[0;35\]"
####-Bold-####
BRed="\[\033[1;31m\]"
BPurple="\[\033[1;35m\]"
##########################


source ~/.aliases

# set up command prompt
function __prompt_command()
{

    PS1=""

    # if logged in via ssh shows the ip of the client
    if [ -n "$SSH_CLIENT" ]; then PS1+="$Yellow("${SSH_CLIENT%% *}") $Color_Off"; fi


    PS1+="\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \[\033[00m\]"

    # debian chroot stuff (take it or leave it)
    #PS1+="${debian_chroot:+($debian_chroot)}"

    # basic information (user@host:path)
    #PS1+="\[$BRed\]\u\[$Color_Off\]@\[$BRed\]\h\[$Color_Off\]:\[$BPurple\]\w\[$Color_Off\] "

    # prompt $ or # for root
    PS1+="\$ "
}

PROMPT_COMMAND=__prompt_command

# if ~/scripts exists, add it to the path
if [ -d ~/scripts ] ; then
PATH=~/scripts:"${PATH}"
fi


# User specific environment and startup programs:
export LANG=en_CA.UTF-8
#export TERM=i3-sensible-terminal
export TERM=screen-256color

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

