alias ll='ls -lhaG'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias zp="code ~/.zshrc"
alias reload='source ~/.zshrc'

alias mac="/Applications/Macdown.app/Contents/SharedSupport/bin/macdown"
alias cls='clear'
alias f='open -a Finder ./'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias killdoc='killall -KILL Dock'
alias killcam='sudo killall VDCAssistant'
alias xcode="open -a Xcode"
alias switch="chsh -s /bin/bash"

# git
alias ga="git add"
alias gc="git commit -m"
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias greset='git reset --hard HEAD;git clean -d -f .'
alias gs='git status'
alias ignore='git update-index --assume-unchanged'
alias unignore='git update-index --no-assume-unchanged'
alias latest='git log --format="%H" -n 1'
alias gac="git add -A && git commit -m $1"

alias na="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | egrep -o -m 1 '^[^\t:]+'"
nr() {
  sudo ifconfig $1 down;sleep 10;sudo ifconfig $1 up
}

# docker
dclean() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
}

drmi() {
  docker rmi $(docker images -q)
}

# Get your current public IP
alias ip="curl icanhazip.com"

# cd behavior
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# paths
alias waw="cd /Users/wade.wegner/p"
alias wawg="cd /Users/wade.wegner/p/github/me/"
alias wawg="cd /Users/wade.wegner/p/github/me/"
alias wawf="cd /Users/wade.wegner/p/github/forcedotcom/"
alias wawgo="cd /Users/wade.wegner/p/Go/src"
alias mine='cd "/Users/wade.wegner/Library/Application Support/minecraft/forge-1.12.2"'
