# Path to your oh-my-zsh installation.
export ZSH=/Users/wade.wegner/.oh-my-zsh

ZSH_THEME="wadewegner"

DEFAULT_USER="wade.wegner"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bower bundler git-hubflow npm node)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lhaG'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias zp="code ~/.zshrc"
alias reload='source ~/.zshrc'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias mac="/Applications/Macdown.app/Contents/SharedSupport/bin/macdown"
alias cls='clear'
alias f='open -a Finder ./'  
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias killdoc='killall -KILL Dock'
alias killcam='sudo killall VDCAssistant'
alias xcode="open -a Xcode"
alias git=hub

# git
alias ga="git add"
alias gc="git commit -m"
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias greset='git reset --hard HEAD;git clean -d -f .'
alias gs='git status -s'
alias ignore='git update-index --assume-unchanged'
alias unignore='git update-index --no-assume-unchanged'
alias latest='git log --format="%H" -n 1'

# sfdx
alias sdfx=sfdx
alias mdd='function _blah(){ sfdx force:source:convert -d mdapiout && sfdx force:mdapi:deploy -d mdapiout --wait 100 -u $1 && rm -rf mdapiout };_blah'
alias sf="sfdx force:"

# Get your current public IP
alias ip="curl icanhazip.com"

# cd behavior
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# paths
alias waw="cd /Users/wade.wegner/Projects"
alias wawg="cd /Users/wade.wegner/Projects/Github/WadeWegner/"
alias wawg="cd /Users/wade.wegner/Projects/Github/WadeWegner/"
alias wawf="cd /Users/wade.wegner/Projects/Github/forcedotcom/"
alias wawgo="cd /Users/wade.wegner/Projects/Go/src"

export GOPATH=/Users/wade.wegner/Projects/Go
export PATH=~/bin:$PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/Users/wade.wegner/SDKs/connectiq-sdk-mac-1.2.5/bin
export PATH=$PATH:/Users/wade.wegner/SDKs/phantomjs-2.1.1-macosx/bin
export PATH=$PATH:/Users/wade.wegner/p4
export PATH=$PATH:/Users/wade.wegner/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:/Users/wade.wegner/bin/apache-maven-3.5.0/bin

export RUN_ARTIFACT_DIR=testArtifacts
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home

# sfdx
export FORCE_SPINNER_DELAY=100
export FORCE_SHOW_SPINNER=true
