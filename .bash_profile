HISTFILESIZE=1000000000
HISTSIZE=1000000

PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# No duplicates in bash history
export HISTCONTROL=ignoreboth:erasedups

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}

export GITHUB_USER=akahn

export GIT_PAGER=less
export RUBYOPT=rubygems
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export LGOBIN=$GOPATH/bin
export EDITOR=vim
export PATH="/usr/local/opt/python/libexec/bin:/usr/local/opt/mysql@5.7/bin:/usr/local/Cellar/node/0.2.5/bin:/usr/local/bin:$GOBIN:$PATH"
export PGDATA="/usr/local/pgsql/data"
export NODE_PATH='/usr/local/lib/node'
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}
export PS1='\[\e[1;34m\]\w\[\e[m\] $(parse_git_branch) \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]\033[0m'

# Git aliases
alias gits='git status -sb'
alias gc='git commit -v'
alias gap='git add --patch'
alias conflicts='git ls-files --unmerged | cut -f2 | uniq'
alias flounce='git checkout --theirs . && git add . && gc'

alias dc='docker-compose'

# Rails aliases
alias sc='./script/console'
alias bootbox='./script/boot'
alias b='bundle exec'

# OS X aliases
alias pbindent='pbpaste | sed "s/^/    /" | pbcopy'
alias itunes='open -a iTunes'

alias rtest="ruby -I test"

alias jsontool='python -m json.tool'


alias vsort='git tag -l | gsort -V'

function gemcd() {
  cd "$(gem open -e echo $1)"
}

function psgrep {
  ps aux | grep $1 | grep -v grep
}

  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}


function last () {
  echo "ruby -e 'now = Time.now.to_i; puts %{start_time=#{now-$1}&end_time=#{now}}'"
}

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi


if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

. "$HOME/.cargo/env"

. "$HOME/.atuin/bin/env"
