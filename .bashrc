alias ll="ls -l"
alias lll="ls -slap"
alias wget="wget --no-check-certificate"
alias tor="screen transmission-cli"
alias tup="killall -HUP transmission-cli"
alias wnu="pkg_version|grep \<"
alias ru="rackup"
alias ff="sudo find / -iname"
alias aftermerge="find . -iname "*.orig" -exec rm {} \;"
alias fs="foreman start"

#export PS1='[\u@\h `date +%X` \w`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\ \(\\\\\1\)\/`\[\033[37m\]]$\[\033[00m\] '
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#export PS1="\w\[\e[0;33;49m\]\$(parse_git_branch)\[\e[0;0m\]$ "

export EDITOR="$HOME/bin/mate -w"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/usr/local/bin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
