alias cd..='cd ..'
alias dl='cd ~/Downloads'
alias back='cd $OLDPWD'
alias ipython='ipython3 --no-confirm-exit'
alias gcovr='python3 -m gcovr'

alias ssn='poweroff'
alias srb='poweroff --reboot'
alias apt_update="sudo apt update && apt list --upgradable"
alias rc='trash'

# Git related aliases
alias glo='git log --oneline --graph'
alias gloa='git log --oneline --graph --all'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gss='git status'
alias gco='git checkout'
alias gbv='git branch -v'
alias gus='git submodule update --init --recursive'

# Docker related aliases
alias dcp='docker container prune'
alias dip='docker image prune'
alias dcls='docker container ls --all'
alias dis='docker images'

function snap_clean(){
	sudo -v
	snap list --all | awk '/disabled/{print $1" --revision "$3}' | xargs -rn3 sudo snap remove
}
