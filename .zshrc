# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='atom -w'
alias edit='atom -w'

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Custom
alias hpp="heroku pipeline:promote --app "
alias rdm="rake db:migrate"
alias rdmt="rake db:migrate RAILS_ENV=test"
alias cakeme="heroku plugins:update git@github.com:alphasights/cake.git && dropdb alpha_dev && rake db:create && heroku cake:slice"
alias be="bundle exec "
alias railss="rails s -b0.0.0.0"

# Git Extras
alias glr="gl --rebase"
alias cleanbr="git remote prune origin && gcm && git branch --merged | grep -v '\*' | xargs -n 1 git branch -d && gco -"

# Node / Bower
alias nom="rm -rf node_modules; npm cache clean; npm install"
alias bom="rm -rf bower_components; bower cache clean; bower install"
alias nombom="nom;bom"
alias bowerpatch="bower version patch -m 'Bump version to %s'"
alias npmpatch="npm version patch"

eval "$(direnv hook zsh)"
