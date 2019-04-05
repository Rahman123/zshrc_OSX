# Path to your oh-my-zsh installation.
export ZSH=/Users/wade.wegner/.oh-my-zsh

ZSH_THEME=""
DEFAULT_USER="wade.wegner"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages bower bundler git-hubflow npm node zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source ~/.alias.sh
source ~/.export.sh

zstyle ':completion:*' menu yes select

# add custom completion scripts
fpath=(~/p/github/me/salesforce-cli-zsh-completion $fpath)

## compsys initialization
autoload -U compinit promptinit
compinit

## added for https://github.com/sindresorhus/pure#getting-started
promptinit
prompt pure

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wade.wegner/bin/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/wade.wegner/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wade.wegner/bin/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/wade.wegner/bin/google-cloud-sdk/completion.zsh.inc'; fi
