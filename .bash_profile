HISTFILESIZE=1000000000
HISTSIZE=1000000

export PAGER=vimpager
export GIT_PAGER=less
export RUBYOPT=rubygems
export EDITOR=vim
export PATH="/usr/local/Cellar/node/0.2.5/bin:/usr/local/bin:$PATH"
export PGDATA="/usr/local/pgsql/data"
export NODE_PATH='/usr/local/lib/node'

# Git aliases
alias gits='git status -sb'
alias gc='git commit -v'
alias gap='git add --patch'
alias conflicts='git ls-files --unmerged | cut -f2 | uniq'

# Rails aliases
alias sc='./script/console'
alias bootbox='./script/boot'
alias b='bundle exec'

# OS X aliases
alias pbindent='pbpaste | sed "s/^/    /" | pbcopy'
alias itunes='open -a iTunes'

function psgrep {
  ps aux | grep $1 | grep -v grep
}

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
