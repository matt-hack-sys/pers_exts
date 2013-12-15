#
#
#
#
#
#
##########################
# check  for login
[ -z "$PS1" ] && return

##
#  External Source implementation

source /home/user/.bashrc_contents/aliases
#source /home/user/.bashrc_contents/aliases
#source /home/user/.bashrc_contents/aliases
source /home/user/.bashrc_contents/functions
source /home/user/.bashrc_contents/lscolors

[ ! "$UID" == "0" ] && /home/user/.bashrc_contents/archbey2.sh

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# shellopts 

shopt -s checkwinsize
shopt -s histappend
shopt -s globstar

  
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( $(sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo)/1024))"\033[38;5;22m/"$(($(sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo)/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"'
PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] ($SHLVL:\!)\n\$ '
PS2=''


#export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/bugtraq/perl5";
#export PERL_MB_OPT="--install_base /home/bugtraq/perl5";
#export PERL_MM_OPT="INSTALL_BASE=/home/bugtraq/perl5";
#export PERL5LIB="/home/bugtraq/perl5/lib/perl5:$PERL5LIB";
#export PATH="/home/bugtraq/perl5/bin:$PATH";
