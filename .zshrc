# Execute !! commands immediately, without confirmation
unsetopt HIST_VERIFY

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="sorin"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby osx github brew rvm rails bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/akahn/.rvm/gems/ruby-1.9.2-p180/bin:/Users/akahn/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/akahn/.rvm/rubies/ruby-1.9.2-p180/bin:/Users/akahn/.rvm/bin:/usr/local/Cellar/node/0.2.5/bin

source ~/.commonrc
