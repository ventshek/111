#!/bin/bash
alias gui='sudo systemctl start gdm'
alias awm='sudo nano /etc/xdg/awesome/rc.lua'
alias gitt='w3m www.github.com/ventshek/111/raw/main/eg | while read -r abc; do echo "$abc"; done > temp.txt && nano temp.txt'
alias confi='sudo nano /etc/profile.d/alias.sh'
alias rr='sudo sh rr.sh'
alias fj='sudo sh fj.sh'
alias ls='ls --color=auto -laho --time-style="+"'
alias l='ls --color=auto -lA --time-style long-iso'
alias updt='sudo sh rr.sh'
alias uninn='sudo pacman --noconfirm -R'
alias inn='sudo pacman --noconfirm -Sy'
alias sea='sudo pacman -Ss'
alias enbl='sudo systemctl enable'
alias strt='sudo systemctl start'
alias stus='sudo systemctl status'
alias ll='ls --color=auto -la --time-style long-iso'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ff='find / -name'
alias f='find . -name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip -c'
alias pacman='pacman --color auto'
alias pactree='pactree --color'
alias vdir='vdir --color=auto'
alias watch='watch --color'
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
# Test fn.
ttt () {
echo before "$@" after
}
# Updater.
up_fn () {
clear
sudo pacman --noconfirm -Syyu
sudo pacman --noconfirm -Scc
clear
printf "Update completed \nDisk useage:\n"
df -h
}

